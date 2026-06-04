# olist-eda-sql
EDA on Brazilian E-Commerce Dataset using MySQL —99K orders analyzed, data cleaning, business insights.
# 🛒 Exploratory Data Analysis — Olist Brazilian E-Commerce
### Tool: MySQL Workbench | Language: SQL | Dataset: Kaggle

---

## 📌 Project Overview

This project performs end-to-end **Exploratory Data Analysis (EDA)** 
on the Olist Brazilian E-Commerce dataset using SQL.

The goal is to inspect, clean, and analyze real-world e-commerce data 
to uncover actionable business insights — exactly as a Data Analyst 
would in a professional setting.

**Dataset:** 99,441 Orders | 8 Tables | Real-World Data  
**Source:** [Kaggle — Olist Brazilian E-Commerce]
(https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

---

## 🎯 Objectives

- Inspect all 8 database tables and understand data structure
- Perform data quality checks — detect and fix duplicates & NULLs
- Analyze revenue, orders, customer behavior, product performance
- Answer 8 key business questions using SQL
- Summarize actionable insights for business decision-making

---

## 🗂️ Dataset Schema

| Table Name | Description | Rows |
|---|---|---|
| orders | All customer orders with status & timestamps | 96,461 |
| customers | Customer details and location | 99,441 |
| order_items | Products in each order with price | 1,12,650 |
| order_payments | Payment type and value per order | 1,03,886 |
| order_reviews | Customer ratings and reviews | 99,223 |
| products | Product details and category | 32,951 |
| sellers | Seller location and ID | 3,095 |
| product_category_translation | Category names in English | 71 |

---

## 🔍 Project Steps

### Step 1 — Data Inspection
- Viewed all 8 tables using SELECT queries
- Understood column names, data types, and relationships

### Step 2 — Data Quality Check & Cleaning
- Detected **48,281 duplicate rows** in orders table
- Removed duplicates using `CREATE TABLE AS SELECT DISTINCT`
- Checked NULL values across orders, products, order_items tables
- Result: Clean dataset with 96,461 unique orders

### Step 3 — Business Analysis (8 Questions)

| # | Business Question |
|---|---|
| Q1 | What is the Order Delivery Performance? |
| Q2 | What is the Total Revenue? |
| Q3 | What is the Monthly Revenue Trend? |
| Q4 | Which are the Top Product Categories? |
| Q5 | What are the Customer Review Ratings? |
| Q6 | Which Cities Have the Most Orders? |
| Q7 | Which Payment Methods are Most Popular? |
| Q8 | Which are the Top 5 Sellers by Revenue? |

---

## 📊 Key Business Insights

| # | Insight | Business Impact |
|---|---|---|
| 1 | 99.99% orders delivered successfully | Excellent operations |
| 2 | Total Revenue = R$ 16,008,872 | Strong performance |
| 3 | 10x order growth in 6 months (2016→2017) | Rapid expansion |
| 4 | Health & Beauty = #1 revenue category | Focus marketing here |
| 5 | 57.78% gave 5-star rating | Good CX, needs improvement |
| 6 | Sao Paulo = 15,250 orders (#1 city) | Target SE Brazil |
| 7 | 76% payments via credit card | Prioritize card experience |
| 8 | Guariba seller leads with R$ 2.29L revenue | Study top sellers |

---

## 🛠️ SQL Concepts Used

`SELECT` `WHERE` `GROUP BY` `ORDER BY` `JOIN` `DISTINCT`  
`COUNT` `SUM` `AVG` `ROUND` `CASE WHEN` `UNION ALL`  
`Window Functions` `CREATE TABLE AS SELECT` `ALTER TABLE`

---

## 📁 File Structure
olist-eda-sql/
│
├── README.md
├── queries/
│   ├── 01_data_inspection.sql
│   ├── 02_data_cleaning.sql
│   └── 03_business_analysis.sql

---

##  👩‍💻 About Me

NIDHI KUMARI  
Aspiring Data Analyst | SQL | Excel | Python (Learning)  
nidhi2tiwari148@gmail.com  
*This project was built as part of my data analytics learning journey 
to demonstrate real-world SQL skills on a production-scale dataset.
