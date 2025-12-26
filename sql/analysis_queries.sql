-- Retail Sales Analysis Queries
-- Database: retail_sales_db
-- Table: superstore_sales

-- 1. Total Sales
SELECT
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore_sales;

-- 2. Sales by Region
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;

-- 3. Sales by Category and Sub-Category
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore_sales
GROUP BY category, sub_category
ORDER BY category, total_sales DESC;

-- 4. Yearly Sales Trend
SELECT
    order_year,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore_sales
GROUP BY order_year
ORDER BY order_year;

-- 5. Average Order Value
SELECT
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore_sales;

-- 6. Top 10 Customers by Sales
SELECT
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales
FROM superstore_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
