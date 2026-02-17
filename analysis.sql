-- Total Sales
SELECT SUM(sales_amount) AS total_revenue
FROM sales;

-- Top 5 Products by Sales
SELECT product_name, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Sales by Region
SELECT region, SUM(sales_amount) AS regional_sales
FROM sales
GROUP BY region
ORDER BY regional_sales DESC;

-- Customer Purchase Frequency
SELECT customer_id, COUNT(order_id) AS total_orders
FROM sales
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
-- Additional Analysis
-- Total Sales
SELECT SUM(Sales_Amount) AS total_sales
FROM sales_data;

-- Sales by Region
SELECT Region, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;

-- Top 5 Sales Representatives
SELECT Sales_Rep, SUM(Sales_Amount) AS total_sales
FROM sales_data
GROUP BY Sales_Rep
ORDER BY total_sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT 
    DATE_FORMAT(Sale_Date, '%Y-%m') AS month,
    SUM(Sales_Amount) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Average Sales per Transaction
SELECT AVG(Sales_Amount) AS avg_sales
FROM sales_data;
