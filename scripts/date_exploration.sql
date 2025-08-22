USE DataWarehouse;
 
--Date Exploration

--Find the date of the first and last order
--How many sales are available
SELECT
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales

--Find the youngest and oldest customer
SELECT
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customer

--Customer by age bracket
SELECT
    CASE 
        WHEN DATEDIFF(year, birthdate, GETDATE()) < 25 THEN 'Under 25'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 25 AND 34 THEN '25-34'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 35 AND 44 THEN '35-44'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 45 AND 54 THEN '45-54'
        WHEN DATEDIFF(year, birthdate, GETDATE()) >= 55 THEN '55+'
        ELSE 'Unknown'
    END AS age_group,
    COUNT(*) AS customer_count
FROM gold.dim_customer
GROUP BY 
    CASE 
        WHEN DATEDIFF(year, birthdate, GETDATE()) < 25 THEN 'Under 25'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 25 AND 34 THEN '25-34'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 35 AND 44 THEN '35-44'
        WHEN DATEDIFF(year, birthdate, GETDATE()) BETWEEN 45 AND 54 THEN '45-54'
        WHEN DATEDIFF(year, birthdate, GETDATE()) >= 55 THEN '55+'
        ELSE 'Unknown'
    END;

--Monthly order volume
SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    COUNT(*) AS order_count,
    SUM(sales_amount) AS total_sales
FROM gold.fact_sales
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;

 