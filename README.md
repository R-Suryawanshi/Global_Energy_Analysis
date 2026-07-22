# 🌍 Global Climate & Energy Analytics using Snowflake

![Snowflake](https://img.shields.io/badge/Snowflake-Data%20Warehouse-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-orange)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen)

---

# 📌 Project Overview

This project demonstrates an **end-to-end Data Analytics pipeline** built using **Snowflake**.

The project loads the **Our World in Data (OWID) Energy Dataset**, performs data cleaning and validation, creates analytical views, implements advanced SQL using Window Functions, and automates incremental data processing using **Streams** and **Tasks**.

Finally, the cleaned dataset is ready for visualization using **Power BI**.

---

# 🎯 Objectives

- Build a Snowflake Data Warehouse
- Load CSV files into Snowflake
- Perform Data Cleaning
- Validate imported data
- Create analytical views
- Perform business analysis
- Learn Window Functions
- Implement Change Data Capture (Streams)
- Automate ETL using Tasks
- Build a Dashboard

---

# 🛠 Tech Stack

- Snowflake
- SQL
- Snowsight
- Power BI
- Git
- GitHub

---

# 📂 Project Structure

```
GLOBAL_ENERGY_ANALYTICS
│
├── Dashboard
├── Dataset
├── Documentation
├── Images
├── Scripts
├── SQL
├── README.md
└── LICENSE
```

---

# 🏗 Project Architecture

```
CSV Dataset
      │
      ▼
Internal Stage
      │
      ▼
RAW_ENERGY_DATA
      │
      ▼
CLEAN_ENERGY_DATA
      │
      ▼
Views
      │
      ▼
Window Functions
      │
      ▼
RAW_ENERGY_STREAM
      │
      ▼
ENERGY_STREAM_TASK
      │
      ▼
Dashboard
```

---

# 📁 SQL Modules

| File | Description |
|------|-------------|
|01_database.sql|Database & Schema Creation|
|02_stage.sql|Stage & File Format|
|03_tables.sql|Table Creation|
|04_copy_into.sql|Data Loading|
|05_data_cleaning.sql|Data Cleaning|
|06_views.sql|Views|
|07_analysis.sql|Business Analysis|
|08_window_functions.sql|Advanced SQL|
|09_streams.sql|Streams|
|10_tasks.sql|Automation|

---

# 📊 SQL Concepts Used

## Basic SQL

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- LIMIT

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## Window Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()
- SUM() OVER()
- AVG() OVER()
- COUNT() OVER()
- FIRST_VALUE()
- LAST_VALUE()
- NTILE()
- PERCENT_RANK()

---

# ❄ Snowflake Concepts

- Database
- Schema
- Warehouse
- Internal Stage
- File Format
- COPY INTO
- INFER_SCHEMA()
- Views
- Streams
- Tasks

---

# 📈 Business Analysis

The project answers questions like:

- Top Electricity Producing Countries
- Renewable Energy Leaders
- Highest GDP Countries
- Electricity Demand vs Generation
- Greenhouse Gas Emissions
- Energy Consumption Trends
- Year-over-Year Analysis

---

# 📊 Dashboard

Dashboard includes:

- Top 10 Electricity Producers
- Renewable Energy Consumption
- Electricity Demand
- Greenhouse Gas Emissions
- Country-wise Analysis
- Year-wise Trends

---

# 🚀 Learning Outcomes

After completing this project I learned:

- Snowflake Architecture
- SQL for Analytics
- ETL Pipeline Design
- Data Cleaning
- Window Functions
- Streams
- Tasks
- Data Validation
- Dashboard Preparation

---

# 👨‍💻 Author

**Ritesh Suryawanshi**

B.Tech - Artificial Intelligence & Data Science

Data Analyst | Snowflake | SQL | Power BI | Python

---

⭐ If you like this project, consider giving it a star.