-- Bangladesh Fuel Price Analysis
-- Run after importing the cleaned CSVs into MySQL Workbench.
-- Suggested table names: monthly_fuel_prices, official_price_revisions
-- Check actual imported column names/types before running.
CREATE DATABASE bangladesh_fuel_analysis;
USE bangladesh_fuel_analysis;

ALTER TABLE monthly_fuel_prices
CHANGE COLUMN `ï»¿Month` `Month` TEXT;

-- 1) Record count and date coverage
SELECT COUNT(*) AS record_count,
       MIN(Month) AS first_month,
       MAX(Month) AS last_month
FROM monthly_fuel_prices;





-- 2) Fuel category coverage
SELECT Fuel_Type, COUNT(*) AS records
FROM monthly_fuel_prices
GROUP BY Fuel_Type
ORDER BY Fuel_Type;

-- 3) Duplicate month/fuel keys (expected: zero)
SELECT Month, Fuel_Type, COUNT(*) AS row_count
FROM monthly_fuel_prices
GROUP BY Month, Fuel_Type
HAVING COUNT(*) > 1;

-- 4) Missing or invalid price values
SELECT *
FROM monthly_fuel_prices
WHERE Month IS NULL
   OR Fuel_Type IS NULL
   OR Price_BDT_Per_Litre IS NULL
   OR Price_BDT_Per_Litre <= 0;

-- 5) Month-over-month change calculated from observed values
WITH price_lag AS (
    SELECT Month, Fuel_Type, Price_BDT_Per_Litre,
           LAG(Price_BDT_Per_Litre) OVER (
               PARTITION BY Fuel_Type ORDER BY Month
           ) AS calculated_previous_price
    FROM monthly_fuel_prices
)
SELECT Month, Fuel_Type, Price_BDT_Per_Litre,
       calculated_previous_price,
       Price_BDT_Per_Litre - calculated_previous_price AS calculated_change_bdt,
       CASE WHEN calculated_previous_price IS NULL OR calculated_previous_price = 0
            THEN NULL
            ELSE (Price_BDT_Per_Litre - calculated_previous_price) / calculated_previous_price
       END AS calculated_change_percent
FROM price_lag
ORDER BY Month, Fuel_Type;

-- 6) First and latest observed price by fuel
WITH ranked AS (
    SELECT Month, Fuel_Type, Price_BDT_Per_Litre,
           ROW_NUMBER() OVER (PARTITION BY Fuel_Type ORDER BY Month) AS first_rank,
           ROW_NUMBER() OVER (PARTITION BY Fuel_Type ORDER BY Month DESC) AS latest_rank
    FROM monthly_fuel_prices
)
SELECT Fuel_Type,
       MAX(CASE WHEN first_rank = 1 THEN Month END) AS first_month,
       MAX(CASE WHEN first_rank = 1 THEN Price_BDT_Per_Litre END) AS first_price,
       MAX(CASE WHEN latest_rank = 1 THEN Month END) AS latest_month,
       MAX(CASE WHEN latest_rank = 1 THEN Price_BDT_Per_Litre END) AS latest_price
FROM ranked
GROUP BY Fuel_Type;

-- 7) Official revision events: inspect column names after import, then summarize.
-- Example if table contains Fuel_Type, Effective_Date, Price_Before, Price_After:
-- SELECT Fuel_Type, COUNT(*) AS revision_count,
--        SUM(Price_After - Price_Before) AS net_recorded_change
-- FROM official_price_revisions
-- GROUP BY Fuel_Type;
