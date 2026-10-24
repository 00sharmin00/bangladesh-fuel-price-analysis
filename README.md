# Bangladesh Fuel Price Overview & Revision Dynamics Analysis (2024–2026)

### A Power BI Case Study | Energy & Economic Analytics

**Role:** Junior Data Analyst  
**Industry:** Energy / Economic Analytics  
**Tools:** Microsoft Excel, Power Query, Power BI, DAX  
**Data Source:** Bangladesh government fuel price publications and official notices  
**Analysis Period:** June 2024 – October 2026  
**Dataset Size:** 116 monthly fuel price observations

---

## 1. Executive Summary

This project analyzes government-regulated fuel prices in Bangladesh from June 2024 through October 2026, focusing on four major fuel categories: Octane, Petrol, Kerosene, and Diesel.

Using Microsoft Excel, Power Query, and Power BI, the project examines historical price movements, revision frequency, monthly trends, and before-and-after price changes associated with official price revisions.

The interactive dashboard provides a consolidated view of fuel price levels and revision dynamics to support historical monitoring, comparative analysis, and data-driven economic research.

## 2. Business Context & Problem Statement

### Business Context

Fuel prices influence transportation costs, logistics operations, agricultural activities, power generation, and broader economic conditions in Bangladesh. Tracking government price revisions helps analysts and businesses understand how regulated fuel prices change over time.

### Business Problem

Historical fuel price information and revision notices can be difficult to compare across multiple dates and fuel categories without a centralized analytical view.

This project addresses three key challenges:

- **Limited price visibility:** Difficulty comparing current and historical prices across fuel types.
- **Revision tracking:** Difficulty identifying whether prices increased, decreased, remained unchanged, or represented a first observation.
- **Revision verification:** Need for a structured comparison of before-and-after prices against official notices.

### Project Objectives

- Track the latest reported prices per litre for four fuel categories.
- Classify observations by price revision status.
- Analyze historical and monthly price movements.
- Compare before-and-after prices for individual revisions.
- Develop an interactive Power BI dashboard for fuel price monitoring.

## 3. Dataset Overview

The dataset contains 116 monthly fuel price observations covering June 2024 to October 2026.

### Key Variables

| Variable | Description |
|---|---|
| Fuel_Type | Fuel category |
| Price_BDT_Per_Litre | Recorded price per litre in BDT |
| Before_Price | Price before a revision |
| After_Price | Price after a revision |
| Price_Change_BDT | Difference between before and after prices |
| Price_Status | Revision classification |
| Year | Calendar year |
| Quarter | Calendar quarter |
| Month | Month of observation |
| Day | Day associated with the record |
| Source | Source reference for the observation |

### Fuel Categories

- Octane
- Petrol
- Kerosene
- Diesel

### Data Source

The analysis uses government fuel price publications and official notices, with Bangladesh Bank not being the primary source for regulated fuel prices.

For reproducibility, the repository should include links to the relevant official fuel price announcements and the Energy and Mineral Resources Division (EMRD) publications used in the analysis.

## 4. Tools & Technologies

- **Microsoft Excel:** Initial data inspection and preparation.
- **Power Query:** Data cleaning, transformation, date standardization, and conditional logic.
- **Power BI:** Interactive reporting and visualization.
- **DAX:** Dynamic measures and KPI calculations.
- **Data Modeling:** Organizing fuel price observations for time-based and category-level analysis.

## 5. Data Cleaning & Processing Workflow

### Step 1: Data Collection
Collected historical fuel price observations and relevant government revision information.

### Step 2: Data Inspection
Reviewed fuel categories, date fields, price values, and source references for inconsistencies.

### Step 3: Data Cleaning
Standardized date and numeric formats, reviewed missing values, and checked the consistency of fuel category labels.

### Step 4: Price Change Calculation
Calculated the difference between before-and-after prices.

**Price Change = After Price − Before Price**

### Step 5: Price Status Classification
Classified records into four categories:

- **Increased:** After price is greater than before price.
- **Decreased:** After price is lower than before price.
- **Unchanged:** After price equals before price.
- **First Observation:** No previous comparable price exists.

### Step 6: Dashboard Development
Built interactive Power BI visuals to compare fuel prices, monitor revision status, and analyze changes over time.

### Step 7: Validation
Compared recorded before-and-after prices against the corresponding official notices where available.

## 6. Key Findings & Metrics

The following figures are reported by the project analysis and should be reconciled with the underlying dataset before publication.

### Latest Reported Fuel Prices

| Fuel Type | Price per Litre (BDT) |
|---|---:|
| Octane | ৳165.00 |
| Petrol | ৳160.00 |
| Kerosene | ৳155.00 |
| Diesel | ৳135.00 |

**Reported overall historical average:** ৳120.29 per litre across the 116 observations.

*The latest prices are reported as of October 2026 and should be verified against the applicable official price notice.*

### Price Revision Status Distribution

| Price Status | Records | Percentage |
|---|---:|---:|
| Unchanged | 63 | 54.31% |
| Decreased | 27 | 23.28% |
| Increased | 22 | 18.97% |
| First Observation | 4 | 3.45% |
| **Total** | **116** | **100.01%*** |

*Percentages may total 100.01% due to rounding.*

### Key Insights

**1. Unchanged Prices Were the Largest Category**

Of the 116 records, 63 were classified as unchanged, representing approximately 54.31% of the dataset.

**Business implication:** Historical monitoring should distinguish stable-price observations from actual revision events.

**2. Price Decreases Exceeded Price Increases in the Dataset**

The analysis recorded 27 decreases and 22 increases.

**Business implication:** Comparing the magnitude and timing of changes is more informative than counting revision directions alone.

**3. Fuel Prices Differed by Category**

Octane had the highest reported latest price at ৳165 per litre, while Diesel had the lowest at ৳135 per litre.

**Business implication:** Separate category-level tracking helps analysts compare regulated price levels across different fuel types.

**4. Monthly Trends Require Contextual Interpretation**

The analysis reports notable variation during June–October.

**Business implication:** Monthly movements should be examined alongside official revision dates and relevant external factors. The observed trend alone does not establish that global crude prices or domestic policy changes caused the variation.

## 7. Power BI Dashboard Features

### Dashboard Page 1: Bangladesh Fuel Price Overview

Provides a high-level summary of fuel price levels and historical movements.

**Key visuals:**
- KPI cards for major fuel price indicators.
- Latest reported price comparison across four fuel categories.
- Monthly fuel price trend chart.
- Time-based filtering by year, quarter, and month.
- Fuel category comparisons.

### Dashboard Page 2: Fuel Price Changes & Revision Analysis

Focuses on price revision patterns and data verification.

**Key visuals:**
- Donut chart showing revision status distribution.
- Trend chart of price changes in BDT per litre.
- Before-and-after price comparisons.
- Fuel category and time-based filtering.
- Revision-level comparison against official notices.

## 8. Dashboard Preview

Add screenshots of your completed Power BI dashboard to the repository.

Example Markdown:

![Bangladesh Fuel Price Overview Dashboard](screenshots/fuel-price-overview.png)

![Fuel Price Revision Analysis Dashboard](screenshots/fuel-price-revision-analysis.png)

Replace the example image paths with the actual filenames uploaded to your `screenshots/` folder.

## 9. Business Recommendations

1. **Maintain a revision history:** Preserve official notices, effective dates, and before-and-after prices for auditability.
2. **Monitor fuel categories separately:** Track price movements by fuel type to support more detailed comparisons.
3. **Investigate major changes:** Flag unusually large price movements for additional review against official publications.
4. **Standardize data validation:** Check dates, units, and price calculations before publishing dashboard updates.
5. **Support operational planning:** Use historical price trends as one input into transport and logistics budgeting, while recognizing that fuel prices alone do not determine total operating costs.

These are analytical recommendations, not evidence that specific operational changes have already been implemented.

## 10. Repository Structure

Suggested GitHub repository layout:

```text
bangladesh-fuel-price-analysis/
│
├── README.md
├── data/
│   └── fuel-price-data.csv
├── power-query/
│   └── transformation-notes.md
├── power-bi/
│   └── fuel-price-dashboard.pbix
├── screenshots/
│   ├── fuel-price-overview.png
│   └── fuel-price-revision-analysis.png
└── docs/
    └── methodology.md
```

The filenames are examples. Include only files that actually exist in your project, and share datasets only when redistribution is permitted.

## 11. Limitations & Data Quality Notes

- Findings depend on the accuracy and completeness of the source observations.
- First-observation records do not have a comparable previous price.
- Historical averages may be affected by the number of observations per fuel category and reporting period.
- Monthly price patterns do not independently establish causation.
- Latest reported prices and effective dates should be validated against official notices before publication.

## 12. Author

**Sharmin Akter**  
Junior Data Analyst | Excel | Power Query | Power BI | DAX

This project demonstrates data preparation, historical trend analysis, price revision classification, and interactive business intelligence reporting.

---

*Portfolio project for educational and analytical purposes. Source references and reported metrics should be verified against the original publications before use in formal research or business decisions.*
