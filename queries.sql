-- Sunrise Supermarket Analysis Queries
-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- DBMS: Oracle Database 26ai Free

-- ==========================================
-- JOIN QUERIES
-- ==========================================

-- JOIN 1: Display every order with customer name, city and order date.
SELECT o.order_id, c.customer_name, c.city, o.order_date FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id ORDER BY o.order_id;

-- JOIN 2: Display every order item with product information.
SELECT oi.order_item_id, p.product_name, p.category, p.price, oi.quantity FROM order_items oi INNER JOIN products p ON oi.product_id = p.product_id ORDER BY oi.order_item_id;

-- JOIN 3: Display all customers and their orders, including customers with no orders.
SELECT c.customer_id, c.customer_name, o.order_id, o.order_date FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id ORDER BY c.customer_id, o.order_date;

-- ==========================================
-- CTE QUERY
-- ==========================================

-- CTE 1: Find customers whose total spending is above the average customer spending.
WITH customer_totals AS (SELECT c.customer_id, c.customer_name, NVL(SUM(oi.quantity*p.price),0) total_spend FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id LEFT JOIN order_items oi ON o.order_id=oi.order_id LEFT JOIN products p ON oi.product_id=p.product_id GROUP BY c.customer_id,c.customer_name) SELECT customer_id, customer_name, total_spend FROM customer_totals WHERE total_spend > (SELECT AVG(total_spend) FROM customer_totals) ORDER BY total_spend DESC;

-- ==========================================
-- WINDOW FUNCTION QUERIES
-- ==========================================

-- WINDOW 1: Rank customers by total spending, highest first.
WITH customer_totals AS (SELECT c.customer_id, c.customer_name, NVL(SUM(oi.quantity*p.price),0) total_spend FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id LEFT JOIN order_items oi ON o.order_id=oi.order_id LEFT JOIN products p ON oi.product_id=p.product_id GROUP BY c.customer_id,c.customer_name) SELECT customer_id, customer_name, total_spend, RANK() OVER (ORDER BY total_spend DESC) spend_rank FROM customer_totals ORDER BY spend_rank;

-- WINDOW 2: Number each customer's orders according to the order date.
SELECT customer_id, order_id, order_date, ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date, order_id) AS order_number FROM orders ORDER BY customer_id, order_number;

-- WINDOW 3: Calculate daily revenue and the running total revenue over time.
SELECT order_date, daily_revenue, SUM(daily_revenue) OVER (ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) running_revenue FROM (SELECT o.order_date, SUM(oi.quantity*p.price) daily_revenue FROM orders o INNER JOIN order_items oi ON o.order_id=oi.order_id INNER JOIN products p ON oi.product_id=p.product_id GROUP BY o.order_date) ORDER BY order_date;

-- WINDOW 4: Calculate the number of days between each customer's orders.
SELECT customer_id, order_id, order_date, days_since_previous_order FROM (SELECT o.customer_id, o.order_id, o.order_date, o.order_date - LAG(o.order_date) OVER (PARTITION BY o.customer_id ORDER BY o.order_date, o.order_id) days_since_previous_order, COUNT(*) OVER (PARTITION BY o.customer_id) order_count FROM orders o) WHERE order_count > 1 AND days_since_previous_order IS NOT NULL ORDER BY customer_id, order_date;
