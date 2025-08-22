USE DataWarehouse;

--Explore all countries our customers come from
SELECT DISTINCT country FROM gold.dim_customer

--Explore all categories "As the major divisions"
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1,2,3

-- Count of products per category and subcategory
SELECT 
    category,
    subcategory,
    COUNT(DISTINCT product_name) AS product_count
FROM gold.dim_products
GROUP BY category, subcategory
ORDER BY category, subcategory;