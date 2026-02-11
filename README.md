# 📊 Adidas Retail Sales Intelligence & Forecasting

An end-to-end data analytics project transforming raw retail sales data into actionable business insights through SQL analysis, Python forecasting, and interactive Power BI dashboards.

---

## 🎯 Project Overview

This project demonstrates the complete analytics lifecycle—from data preparation to executive-level decision support—by combining:
- **Descriptive Analytics**: Historical performance analysis and KPI measurement
- **Predictive Analytics**: Time-series forecasting for future sales trends
- **Business Intelligence**: Interactive dashboards for strategic decision-making

**Key Capabilities**: Revenue analysis • Trend identification • Pareto analysis • Sales forecasting • Executive reporting

---

## 📁 Project Structure
```
Adidas-Retail-Sales-Intelligence-and-Forecasting/
│
├── data/
│   └── Adidas US Sales Datasets.xlsx
│
├── notebooks/
│   └── Data_Cleaning&Forecasting.ipynb
│
├── SQL/
│   └── Sales_Analysis_SQL_Queries.sql
│
├── Power BI/
│   └── Adidas_Sales_Intelligence_Dashboard.pbix
│
├── Dashboard_Overview/
│   └── Adidas_Sales_Revenue_Analysis.pdf
│
└── misc/
    └── adidas_pic.png
```

---

## 📊 Dataset

**Source**: [Adidas Sales Dataset - Kaggle](https://www.kaggle.com/datasets/heemalichaudhari/adidas-sales-dataset)

The dataset contains retail transactional data including:
- Product information and categories
- Regional and retailer breakdowns
- Pricing, units sold, and revenue
- Operating profit and margins
- Sales channels and methods

---

## 🔧 Technologies Used

| Technology | Purpose |
|------------|---------|
| **Python** | Data cleaning, transformation, time-series forecasting |
| **SQL** | Business analysis, KPI extraction, advanced querying |
| **Power BI** | Interactive dashboard development and visualization |
| **Pandas** | Data manipulation and preparation |
| **Prophet** | Sales forecasting and trend modeling |

---

## 🐍 Python Analysis

**File**: `notebooks/Data_Cleaning&Forecasting.ipynb`

### Data Cleaning
- Converted date fields to datetime format
- Validated data integrity and handled missing values
- Standardized column naming conventions
- Created derived metrics (profit margin, aggregations)
- Prepared monthly-level data for forecasting

### Sales Forecasting with Prophet
- Aggregated transactional data to monthly revenue
- Built time-series model capturing trend and seasonality
- Generated future sales predictions
- Enabled proactive inventory and financial planning

**Business Impact**: Provides forward-looking visibility into revenue trends and demand patterns

---

## 🗄️ SQL Analysis

**File**: `SQL/Sales_Analysis_SQL_Queries.sql`

### Key Analyses

#### Revenue & Profitability
- Total sales and operating profit calculation
- Region-wise revenue contribution
- Product-level profitability analysis
- Retailer performance comparison
- Sales channel distribution

#### Time-Based Trends
- Monthly revenue trends
- Peak sales period identification
- Performance variations over time

#### Pareto Analysis (80/20 Rule)
- Identified top products driving majority of revenue
- Calculated cumulative revenue using window functions
- Prioritized high-performing inventory
- Supported resource allocation decisions

### Advanced SQL Techniques
- Window functions (`RANK`, `DENSE_RANK`, `SUM OVER`)
- Common Table Expressions (CTEs)
- Subqueries and nested analysis
- Percentage contribution calculations
- Grouped aggregations

---

## 📈 Power BI Dashboard

**File**: `Power BI/Adidas_Sales_Intelligence_Dashboard.pbix`  
**Preview**: `Dashboard_Overview/Adidas_Sales_Revenue_Analysis.pdf`

### Dashboard Features
- **KPI Metrics**: Total Sales, Operating Profit, Profit Margin
- **Product Analysis**: Sales and profitability by category
- **Geographic Insights**: Regional performance breakdown
- **Retailer Performance**: Comparative analysis across partners
- **Trend Visualization**: Monthly sales patterns
- **Volume Tracking**: Units sold by product category

### Design Principles
Built for executive clarity and quick decision-making:
- ✅ How is the business performing?
- ✅ Where is revenue generated?
- ✅ Which segments need strategic focus?

---

## 🚀 Key Insights & Business Value

### Strategic Findings
1. **Revenue Drivers**: Identified core products generating majority of sales
2. **Regional Patterns**: Highlighted top-performing markets
3. **Seasonal Trends**: Detected peak sales periods for inventory planning
4. **Channel Performance**: Compared effectiveness of different sales methods
5. **Forecasting**: Projected future revenue for proactive planning

### Business Applications
- Optimize inventory allocation
- Focus marketing on high-ROI products
- Improve regional sales strategies
- Enhance demand forecasting accuracy
- Support data-driven executive decisions

---

## 💡 Skills Demonstrated

- **Data Preparation**: Cleaning, validation, transformation
- **SQL Proficiency**: Complex queries, window functions, CTEs
- **Python Programming**: Pandas, time-series analysis, Prophet
- **Data Visualization**: Power BI dashboard design
- **Business Analysis**: KPI definition, trend analysis, strategic insights
- **Predictive Modeling**: Time-series forecasting
- **Communication**: Translating data into executive-ready insights

---

## 📌 Project Outcomes

This project showcases the ability to:
- Build complete analytics pipelines from raw data to insights
- Apply advanced analytical techniques to business problems
- Create professional, decision-focused dashboards
- Implement predictive models for strategic planning
- Deliver actionable recommendations to stakeholders

**Result**: A comprehensive demonstration of modern data analyst capabilities aligned with real-world business analytics requirements.

---

## 📄 License

This project is available for educational and portfolio purposes.
