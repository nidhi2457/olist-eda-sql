-- OLIST EDA PROJECT
-- Step 2: Data Cleaning

-- 2.1 Duplicate Detection
SELECT 
    COUNT(*) AS total_orders,
    COUNT(DISTINCT order_id) AS unique_orders
FROM orders;

-- 2.2 Remove Duplicates
CREATE TABLE orders_clean AS 
    SELECT DISTINCT * FROM orders;
DROP TABLE orders;
ALTER TABLE orders_clean RENAME TO orders;

-- 2.3 NULL Check — orders table
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN order_status IS NULL THEN 1 ELSE 0 END) AS null_status,
    SUM(CASE WHEN order_purchase_timestamp IS NULL THEN 1 ELSE 0 END) AS null_date,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer
FROM orders;

-- 2.4 NULL Check — products table
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN product_category_name IS NULL THEN 1 ELSE 0 END) AS null_category,
    SUM(CASE WHEN product_weight_g IS NULL THEN 1 ELSE 0 END) AS null_weight
FROM products;

-- 2.5 NULL Check — order_items table
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS null_price,
    SUM(CASE WHEN seller_id IS NULL THEN 1 ELSE 0 END) AS null_seller
FROM order_items;
