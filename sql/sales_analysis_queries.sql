CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE sales_data (
    order_id VARCHAR(20),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    sales DECIMAL(10,2),
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    payment_mode VARCHAR(50),
    month_name VARCHAR(20),
    year_value INT,
    profit_margin DECIMAL(10,4)
);

-- Total Sales, Profit, Orders, Quantity
SELECT 
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM sales_data;

-- Monthly Sales and Profit
SELECT 
    month_name,
    year_value,
    ROUND(SUM(sales), 2) AS monthly_sales,
    ROUND(SUM(profit), 2) AS monthly_profit
FROM sales_data
GROUP BY month_name, year_value;

-- Sales by Region
SELECT 
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Sales by Product Category
SELECT 
    product_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;

-- Top 10 Products by Sales
SELECT 
    product_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Payment Mode Analysis
SELECT 
    payment_mode,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY payment_mode
ORDER BY total_sales DESC;