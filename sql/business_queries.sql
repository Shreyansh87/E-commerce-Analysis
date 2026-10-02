-- ==========================================
-- 1. Overall Business KPIs
-- ==========================================

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) AS profit_margin,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM superstore_cleaned;


-- ==========================================
-- 2. Category Performance
-- ==========================================

SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) AS profit_margin
FROM superstore_cleaned
GROUP BY category
ORDER BY total_sales DESC;


-- ==========================================
-- 3. Top 10 Customers by Sales
-- ==========================================

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM superstore_cleaned
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- ==========================================
-- 4. Discount Impact
-- ==========================================

SELECT
    discount_bin,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) AS profit_margin
FROM superstore_cleaned
GROUP BY discount_bin
ORDER BY discount_bin;


-- ==========================================
-- 5. Regional Performance
-- ==========================================

SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM superstore_cleaned
GROUP BY region
ORDER BY total_sales DESC;


-- ==========================================
-- 6. Bottom 10 States by Profit
-- ==========================================

SELECT
    state,
    SUM(profit) AS total_profit
FROM superstore_cleaned
GROUP BY state
ORDER BY total_profit ASC
LIMIT 10;