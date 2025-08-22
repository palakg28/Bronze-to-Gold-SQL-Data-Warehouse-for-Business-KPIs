-- ============================================================================
-- Measure 1: Database Exploration
-- Purpose: Understand the structure and scale of the database before analysis
-- ============================================================================

USE DataWareHouse;
GO


--Information about each table in terms of columns/ data types/ and null values
SELECT 
    TABLE_SCHEMA,
    TABLE_NAME, 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE
FROM 
    INFORMATION_SCHEMA.COLUMNS
ORDER BY 
    TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION;
-- Useful for planning data cleaning, transformations, or quality checks


-- Combine schema, table/view type, row count, and column count into one table
SELECT 
    t.TABLE_NAME,
    t.TABLE_SCHEMA,
    t.TABLE_TYPE,
    ISNULL(r.row_count, '-') AS row_count,
    c.column_count
FROM INFORMATION_SCHEMA.TABLES t
LEFT JOIN (
    -- Get row counts for base tables only
    SELECT 
        t.NAME AS table_name,
        SUM(p.rows) AS row_count
    FROM 
        sys.tables t
    INNER JOIN 
        sys.partitions p ON t.object_id = p.object_id
    WHERE 
        p.index_id IN (0, 1)
    GROUP BY 
        t.NAME
) r ON r.table_name = t.TABLE_NAME
LEFT JOIN (
    -- Get column counts per table/view
    SELECT 
        TABLE_NAME, 
        COUNT(*) AS column_count
    FROM 
        INFORMATION_SCHEMA.COLUMNS
    GROUP BY 
        TABLE_NAME
) c ON c.TABLE_NAME = t.TABLE_NAME
ORDER BY 
    t.TABLE_SCHEMA, t.TABLE_NAME;

--Dispaly row count of gold layer views
SELECT COUNT(*) AS row_count_dim_customer FROM gold.dim_customer;
SELECT COUNT(*) AS row_count_dim_products FROM gold.dim_products;
SELECT COUNT(*) AS row_count_fact_sales FROM gold.fact_sales;
