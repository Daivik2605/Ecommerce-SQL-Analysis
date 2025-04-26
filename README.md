# 📊 Ecommerce Sales Analysis (SQL Project)

This project performs full **Data Preparation** and **Business Analysis** on the **Brazilian Ecommerce Public Dataset (Olist)** using **SQL**.  
The dataset contains over 100,000 orders from Brazilian marketplaces between 2016 and 2018.  
The goal of the project is to derive business insights related to revenue, customer behavior, product performance, and seller dynamics.

---

[![SQL Project](https://img.shields.io/badge/SQL-Project-blue)](#)
[![Dataset](https://img.shields.io/badge/Dataset-100K%2B--rows-success)](#)
[![Status](https://img.shields.io/badge/Status-Completed-brightgreen)](#)

---

## 📂 Project Structure

## 📂 Project Structure

```bash
EcommerceSalesData/
├── queries/
│   ├── Data Preparation/
│   │   └── [SQL scripts for cleaning, fixing datatypes, translations]
│   ├── Data Analysis/
│   │   └── [SQL scripts answering key business questions]
├── README.md
└── [Other SQL files]



---

## 🛠️ Technologies Used
- SQL (DB Browser for SQLite)
- Data Cleaning and Preparation (Type conversion, NULL handling, translation mappings)
- Business Data Analysis (Revenue trends, Customer behavior, Seller performance)

---

## 🔍 Key Analysis Overview

- **Dataset Preparation:**
  - Converted columns to correct data types (timestamps, VARCHAR).
  - Updated missing product category names and created English translations.
  - Fixed inconsistent values manually in product categories.
  
- **Revenue Analysis:**
  - Calculated total revenue only from successfully delivered orders.
  - Total revenue generated: **$15.4 Million USD**.
  - Revenue grew steadily, peaking in **Q2 2018**.

- **Order Trends:**
  - Total orders placed: **96,470**.
  - Order volume increased consistently with seasonal trends.

- **Product Category Insights:**
  - Top selling categories: **Health & Beauty**, **Bed Bath Table**, **Sports Leisure**.
  - Highest sales volume observed in Health & Beauty products.

- **Financial Metrics:**
  - **Average Order Value (AOV):** ~$205
  - **Cost Per Order (CPO):** ~$167
  - **Profit Per Order:** ~$86
  - Voucher payments had a negative profit (expected due to promotions).

- **Seller Performance:**
  - Higher-rated sellers (4 and 5 stars) had significantly more orders and revenue.
  - Sellers with lower ratings (1-2 stars) struggled with order volume.

- **Customer Behavior:**
  - **9,635 repeat customers** contributed **~15% of the total revenue**.
  - Products with average review scores of 4 and 5 drove the majority of sales.

- **Cancellation Rate:**
  - Overall average order cancellation rate: **0.63**.
  - Sellers with 100% cancellation rates had typically very low order volume.

---

## 📈 Business Questions Answered
- What is the total revenue generated and how has it changed over time?
- How does order volume vary by season or month?
- Which product categories are most popular by sales and volume?
- How does Average Order Value vary by product or payment method?
- How do seller ratings impact sales?
- How much do repeat customers contribute to revenue?
- What is the relationship between customer ratings and sales?
- How does the cancellation rate affect seller performance?
- What are the top-selling products over time?

---

## 📊 Dataset Information
- Source: [Brazilian Ecommerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- Period: **September 2016 – October 2018**
- Size: **100,000+ orders** across multiple relational tables
- Features: Order status, payment, delivery, customer location, product attributes, and reviews.

---

## 📚 Acknowledgements
Special credit and inspiration for structuring parts of the SQL queries and analysis approach:
- [E-commerce Data Analysis SQL Project by Ming S Lu](https://medium.com/@ming.s.lu1617/e-commerce-data-analysis-sql-project-dc673b4348a2)

---

> Built with 💻 and 📚 by **Daivik Pelathur**

