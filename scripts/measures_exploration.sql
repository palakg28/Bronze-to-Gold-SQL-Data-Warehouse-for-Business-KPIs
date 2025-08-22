/*
===============================================================================
Measures Exploration
===============================================================================
Purpose:
    - To calculate aggregated metrics for quick insights.
    - To identify overall trends or spot anomalies.
===============================================================================
*/
USE DataWarehouse
-- Generating a Report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Customers', COUNT(customer_key) FROM gold.dim_customer;


-- =============================================
-- Derived Business Metrics (Based on Fact Tables)
-- =============================================

-- All in one SELECT for easy use and export
SELECT 

    CAST(SUM(sales_amount) AS FLOAT) / COUNT(DISTINCT customer_key) AS ARPU,                 -- Average Revenue Per Customer
    CAST(SUM(quantity) AS FLOAT) / COUNT(DISTINCT order_number) AS Units_Per_Order,         -- Average Units per Order
    CAST(SUM(sales_amount) AS FLOAT) / COUNT(DISTINCT order_number) AS AOV,                  -- Average Order Value
    CAST(COUNT(DISTINCT order_number) AS FLOAT) / COUNT(DISTINCT customer_key) AS Orders_Per_Customer
FROM 
    gold.fact_sales;
