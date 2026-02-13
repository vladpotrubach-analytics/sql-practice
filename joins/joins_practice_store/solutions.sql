-- =========================
-- solutions.sql (PostgreSQL)
-- JOINs Practice — Retail Store
-- =========================

-- Task 1 — INNER JOIN (base)
SELECT
  o.order_id,
  o.order_date,
  c.customer_name
FROM orders o
JOIN customers c
  ON c.customer_id = o.customer_id
ORDER BY o.order_id;


-- Task 2 — INNER JOIN + sorting
SELECT
  c.customer_name,
  o.order_id,
  p.product_name,
  oi.quantity,
  oi.unit_price
FROM orders o
JOIN customers c
  ON c.customer_id = o.customer_id
JOIN order_items oi
  ON oi.order_id = o.order_id
JOIN products p
  ON p.product_id = oi.product_id
ORDER BY o.order_id, oi.order_item_id;


-- Task 3 — LEFT JOIN (customers without orders)
SELECT
  c.customer_name,
  o.order_id
FROM customers c
LEFT JOIN orders o
  ON o.customer_id = c.customer_id
ORDER BY c.customer_id, o.order_id;


-- Task 4 — LEFT JOIN + filter (no orders)
SELECT
  c.customer_id,
  c.customer_name
FROM customers c
LEFT JOIN orders o
  ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL
ORDER BY c.customer_id;


-- Task 5 — RIGHT JOIN (mirror)
SELECT
  p.product_name,
  oi.order_id,
  oi.quantity
FROM order_items oi
RIGHT JOIN products p
  ON p.product_id = oi.product_id
ORDER BY p.product_id, oi.order_id;


-- Task 6 — Aggregation + JOIN (revenue per customer)
SELECT
  c.customer_name,
  SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM customers c
JOIN orders o
  ON o.customer_id = c.customer_id
JOIN order_items oi
  ON oi.order_id = o.order_id
GROUP BY c.customer_name
ORDER BY total_revenue DESC;


-- Task 7 — Aggregation + GROUP BY + HAVING
SELECT
  c.customer_name,
  SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM customers c
JOIN orders o
  ON o.customer_id = c.customer_id
JOIN order_items oi
  ON oi.order_id = o.order_id
GROUP BY c.customer_name
HAVING SUM(oi.quantity * oi.unit_price) > 500
ORDER BY total_revenue DESC;


-- Task 8 — Top-N (Top-3 customers by revenue)
SELECT
  c.customer_name,
  SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM customers c
JOIN orders o
  ON o.customer_id = c.customer_id
JOIN order_items oi
  ON oi.order_id = o.order_id
GROUP BY c.customer_name
ORDER BY total_revenue DESC
LIMIT 3;


-- Task 9 — Revenue by category (JOIN 3–4 tables)
SELECT
  p.category,
  SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi
  ON oi.order_id = o.order_id
JOIN products p
  ON p.product_id = oi.product_id
JOIN customers c
  ON c.customer_id = o.customer_id
GROUP BY p.category
ORDER BY revenue DESC;



