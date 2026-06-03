-- OLIST EDA PROJECT
-- Step 3: Business Analysis — 8 Questions

-- Q1: Order Delivery Performance
SELECT 
    order_status,
    COUNT(*) AS total_orders,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- Q2: Total Revenue
SELECT 
    ROUND(SUM(payment_value), 2) AS total_revenue,
    ROUND(AVG(payment_value), 2) AS avg_order_value,
    COUNT(DISTINCT order_id) AS total_orders
FROM order_payments;

-- Q3: Monthly Revenue Trend
SELECT 
    YEAR(order_purchase_timestamp) AS year,
    MONTH(order_purchase_timestamp) AS month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(p.payment_value), 2) AS monthly_revenue
FROM orders o
JOIN order_payments p ON o.order_id = p.order_id
GROUP BY year, month
ORDER BY year, month;

-- Q4: Top Product Categories
SELECT 
    t.product_category_name_english AS category,
    COUNT(oi.order_id) AS total_orders,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_translation t 
    ON p.product_category_name = t.product_category_name
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 10;

-- Q5: Customer Review Ratings
SELECT 
    review_score,
    COUNT(*) AS total_reviews,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM order_reviews
GROUP BY review_score
ORDER BY review_score DESC;

-- Q6: Top Cities by Orders
SELECT 
    c.customer_city,
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(p.payment_value), 2) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_payments p ON o.order_id = p.order_id
GROUP BY c.customer_city, c.customer_state
ORDER BY total_orders DESC
LIMIT 10;

-- Q7: Payment Method Popularity
SELECT 
    payment_type,
    COUNT(*) AS total_transactions,
    ROUND(SUM(payment_value), 2) AS total_revenue,
    ROUND(AVG(payment_value), 2) AS avg_payment
FROM order_payments
GROUP BY payment_type
ORDER BY total_revenue DESC;

-- Q8: Top 5 Sellers by Revenue
SELECT 
    s.seller_id,
    s.seller_city,
    COUNT(oi.order_id) AS total_orders,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
GROUP BY s.seller_id, s.seller_city
ORDER BY total_revenue DESC
LIMIT 5;
