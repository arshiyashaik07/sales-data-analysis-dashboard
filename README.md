# Sales Data Analysis Dashboard

## Project Overview

The Sales Data Analysis Dashboard is an intermediate-level data analytics project built to analyze sales performance across product categories, regions, payment modes, and monthly trends.

This project uses Excel for data preparation, SQL for data analysis, and Power BI for creating an interactive dashboard. The goal of this project is to understand business performance using key metrics such as total sales, total profit, total quantity sold, regional sales, category-wise sales, and monthly sales trends.

---

## Tools and Technologies Used

- Microsoft Excel
- SQL
- MySQL / phpMyAdmin
- XAMPP
- Power BI
- DAX
- GitHub

---

## Dataset Details

The dataset contains sales transaction records with the following columns:

- Order ID
- Order Date
- Customer Name
- Region
- State
- City
- Product Category
- Product Name
- Quantity
- Sales
- Discount
- Profit
- Payment Mode
- Month
- Year
- Profit Margin

---

## Key Features

- Cleaned and prepared sales data using Microsoft Excel
- Created additional columns such as Month, Year, and Profit Margin
- Imported the cleaned dataset into MySQL using phpMyAdmin
- Wrote SQL queries to analyze sales performance
- Built an interactive Power BI dashboard
- Added slicers for filtering data by product category, region, and payment mode
- Visualized sales trends, regional sales, category-wise sales, and KPIs

---

## Dashboard KPIs

The dashboard includes the following key performance indicators:

- Total Sales
- Total Profit
- Total Quantity Sold

---

## Dashboard Visuals

The Power BI dashboard includes:

- Monthly Sales Trend
- Sales by Region
- Sales by Product Category
- Product Category Filter
- Region Filter
- Payment Mode Filter

---

## SQL Analysis Performed

The following SQL analyses were performed:

- Total sales, profit, orders, and quantity
- Monthly sales and profit analysis
- Sales by region
- Sales by product category
- Top products by sales

---

## SQL Queries

```sql
SELECT 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales_data;

