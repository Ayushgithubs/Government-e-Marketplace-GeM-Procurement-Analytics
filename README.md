# Government Procurement Analytics

> 🚧 **Project Status:** Currently Under Development

# Overview

This project analyzes government procurement data to understand procurement spending patterns, evaluate agency and supplier performance, and support transparent, data-driven procurement decisions. The objective is to move beyond basic procurement reporting and build a structured analytics framework that helps government authorities monitor procurement efficiency, identify spending trends, and optimize procurement planning.

The project aims to answer business questions such as:

- Which government agencies account for the highest procurement expenditure?
- Which suppliers receive the highest number and value of contracts?
- How has procurement spending changed over time?
- Which procurement contracts contribute the most to overall expenditure?
- How can procurement data improve transparency and support strategic decision-making?

---

# Dataset

**Source:** Government Procurement Dataset

**Format:** CSV

**Records:** ~32,756 Procurement Records

**Domain:** Government Procurement / Public Sector Analytics

The dataset contains procurement contract information including government agencies, suppliers, contract award dates, tender status, and awarded contract values. It is used to analyze procurement expenditure, supplier participation, procurement trends, and agency performance.

---

# Business Problem

Government procurement authorities manage thousands of procurement contracts across multiple agencies and suppliers. However, without structured analysis, it becomes difficult to monitor procurement spending, evaluate supplier participation, identify expenditure trends, and support effective procurement planning.

This project is designed to use procurement data to:

- Identify high-spending government agencies
- Evaluate supplier participation and contract distribution
- Analyze procurement expenditure trends over time
- Understand contract value distribution
- Support data-driven procurement planning and transparency

---

# Objectives

The main objectives of this project are:

- Analyze procurement spending across government agencies
- Evaluate supplier participation and contract performance
- Identify procurement trends using time-based analysis
- Analyze procurement expenditure across different contract value categories
- Build procurement performance dashboards for decision-makers
- Generate actionable business recommendations to improve procurement efficiency and transparency

---

# Tools & Technologies

## Programming & Analysis

- Python
- Pandas
- NumPy

## Database

- PostgreSQL
- SQL

## Visualization & Reporting

- Power BI
- Microsoft PowerPoint / Gamma AI

---

# Project Workflow

## 1. Data Loading

- Import the procurement dataset into Python.
- Inspect dataset structure, columns, and data types.
- Perform an initial data quality assessment.

## 2. Data Quality Assessment

- Validate missing values.
- Check duplicate records.
- Verify data types.
- Assess overall data quality.

## 3. Data Cleaning

- Convert date columns into appropriate datetime format.
- Standardize column names.
- Validate procurement values.
- Prepare the dataset for analysis.

## 4. Feature Engineering

Create business-focused features such as:

- Award Year
- Award Month
- Award Month Name
- Award Quarter
- Award Day Name
- Contract Value Category

## 5. Exploratory Data Analysis (EDA)

Analyze:

- Procurement expenditure
- Agency performance
- Supplier participation
- Procurement trends
- Contract value distribution
- Procurement activity across years, quarters, and months

## 6. SQL Analysis

Perform business-focused SQL analysis to explore:

- Agency-wise procurement expenditure
- Supplier performance
- Procurement trends
- Year-wise and quarter-wise spending
- Contract value distribution
- Procurement KPIs

## 7. Dashboard & Reporting

Develop an interactive Power BI dashboard featuring:

- KPI Cards
- Procurement expenditure analysis
- Agency performance
- Supplier performance
- Procurement trends
- Contract value insights

Prepare a comprehensive business report and presentation summarizing the findings and recommendations.

---

# Key Analysis Areas

This project focuses on answering the following business questions:

- Which government agencies have the highest procurement expenditure?
- Which suppliers receive the highest contract values?
- How has procurement spending evolved over time?
- Which periods experience the highest procurement activity?
- How are procurement contracts distributed across different contract value categories?
- What procurement insights can support better financial planning and decision-making?

---

# Current Progress

The following components are currently being developed:

- ✅ Business problem understanding
- ✅ Project planning and objective definition
- ✅ Data loading and quality assessment
- ✅ Data cleaning
- ✅ Feature engineering
- ✅ Exploratory Data Analysis (EDA)
- 🚧 PostgreSQL database implementation
- 🚧 SQL business analysis
- 🚧 Power BI dashboard development
- 🚧 Business report and recommendations
- 🚧 GitHub documentation

---

# Expected Outcomes

By the end of this project, decision-makers will be able to:

- Identify high-spending government agencies.
- Evaluate supplier participation and procurement concentration.
- Understand procurement expenditure trends over time.
- Monitor procurement performance through interactive dashboards.
- Improve procurement transparency using data-driven insights.
- Support strategic procurement planning and resource allocation.

---

# Project Structure

```text
Government-Procurement-Analytics/
│
├── data/                  # Raw and cleaned datasets
├── notebooks/             # Python notebooks for analysis
├── sql/                   # SQL queries and scripts
├── dashboard/             # Power BI dashboard files
├── reports/               # Business reports and presentations
├── images/                # Dashboard screenshots
├── README.md              # Project documentation
└── requirements.txt       # Project dependencies
```

---

# Technologies Used

- Python
- Pandas
- NumPy
- PostgreSQL
- SQL
- Power BI
- Git
- GitHub
- Jupyter Notebook

---

# Future Enhancements

- Develop advanced SQL queries using CTEs and Window Functions.
- Build a fully interactive executive Power BI dashboard.
- Add procurement KPI monitoring.
- Publish a detailed business report.
- Enhance documentation with dashboard screenshots and project walkthroughs.

---

# Conclusion

This project demonstrates an end-to-end government procurement analytics workflow using **Python, PostgreSQL, and Power BI** to transform raw procurement data into actionable business insights. It focuses on solving real-world public sector challenges related to procurement expenditure, supplier evaluation, agency performance, procurement transparency, and strategic decision-making, making it highly relevant for **Data Analyst, Business Analyst, Business Intelligence Analyst, and Government Analytics** roles.
```
