Project Title: Bangladesh Fuel Price Overview & Revision Dynamics Analysis (2024–2026)
1. Executive Summary
This project analyzes government fuel price adjustments, price volatility, and monthly trends across key fuel categories in Bangladesh—including Octane, Petrol, Kerosene, and Diesel—from June 2024 through October 2026. Using Power Query for data cleansing/transformation and Power BI for interactive visualization, the dashboard highlights price revision patterns, latest unit costs, and comparative fuel type dynamics to support data-driven policy evaluation and operational budgeting.
2. Business Problem & Objectives
•	Context: Frequent government price revisions directly impact transport logistics, inflation, agriculture, and power generation costs across Bangladesh.
•	Problem: Stakeholders (business analysts, supply chain teams, and researchers) lacked a centralized, interactive view to track historical price movements, verify revised rates against official notices, and evaluate price change frequencies.
•	Key Objectives:
o	Track latest unit prices per liter across all 4 primary fuel types (Octane, Petrol, Kerosene, Diesel).
o	Quantify the distribution of price statuses (Unchanged, Decreased, Increased, and First observation).
o	Evaluate monthly fluctuation patterns across months and quarters.
o	Compare Before vs. After prices for individual revision notices (e.g., EMRD notices) for automated data verification.
3. Dataset & Data Processing Workflow
•	Data Granularity: 116 total monthly record observations spanning June 2024 – October 2026.
•	Key Variables: Fuel_Type, Price_BDT_Per_Litre, Before_Price, After_Price, Price_Change_BDT, Price_Status, Year, Quarter, Month, Day, and Source.
•	Tools Used:
o	Microsoft Excel / Power Query: Data transformation, handling missing data fields, standardizing date formats, and applying conditional logic to flag price revision statuses.
o	Power BI: Data modeling, dynamic measures (DAX), and multi-page visual reporting.
4. Key Findings & Business Insights
1.	Latest Price Hierarchy (as of October 2026):
o	Octane: ৳165.00 / Liter
o	Petrol: ৳160.00 / Liter
o	Kerosene: ৳155.00 / Liter
o	Diesel: ৳135.00 / Liter
o	Overall Average Unit Price: ৳120.29 / Liter across all historic observations.
2.	Price Revision Dynamics (Out of 116 Records):
o	Unchanged: 54.31% (63 records remained steady between revisions).
o	Decreased: 23.28% (27 price reductions).
o	Increased: 18.97% (22 price upward adjustments).
o	First Observation / Baseline: 3.45% (4 initial records).
3.	Seasonal / Monthly Trends:
o	Pronounced price variance surges recorded during mid-year months (June–October), reflecting external global crude price pressures and domestic government tariff revisions.
5. Solution & Technical Highlights
•	Dashboard Page 1 — Bangladesh Fuel Price Overview: Provides high-level KPIs, bar charts comparing latest fuel prices, and a stacked/line trend chart detailing aggregated monthly prices.
•	Dashboard Page 2 — Fuel Price Changes & Revision Analysis: Features a donut breakdown of revision statuses, line charts tracking BDT changes per liter over time, and comparative before/after audit bars for data verification against Energy & Mineral Resources Division (EMRD) notices.

