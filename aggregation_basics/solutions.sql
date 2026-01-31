-- solutions.sql
-- Assumes schema.sql was executed

-- Level 3 — ORDER BY + LIMIT

-- 7) Sort orders by price from expensive to cheap
SELECT *
FROM orders
ORDER BY price DESC;

-- 8) Find 3 cheapest orders
SELECT *
FROM orders
ORDER BY price ASC
LIMIT 3;

-- 9) Find the most expensive order
SELECT *
FROM orders
ORDER BY price DESC
LIMIT 1;

-- Level 4 — simple calculations

-- 10) Show order_id, product, quantity, price and total_price = quantity * price
SELECT
  order_id,
  product,
  quantity,
  price,
  quantity * price AS total_price
FROM orders;

-- Level 5 — COUNT / GROUP BY

-- 11) How many orders in the table?
SELECT COUNT(*) AS total_orders
FROM orders;

-- 12) How many orders in each country?
SELECT
  country,
  COUNT(*) AS orders_count
FROM orders
GROUP BY country
ORDER BY orders_count DESC;

-- 13) How many orders each customer made?
SELECT
  customer_name,
  COUNT(*) AS orders_count
FROM orders
GROUP BY customer_name
ORDER BY orders_count DESC, customer_name;

-- 14) Average product price by country
SELECT
  country,
  AVG(price) AS avg_price
FROM orders
GROUP BY country
ORDER BY avg_price DESC;

-- Level 6 — HAVING (filter after GROUP BY)

-- 15) Find countries where there are more than 2 orders
SELECT
  country,
  COUNT(*) AS orders_count
FROM orders
GROUP BY country
HAVING COUNT(*) > 2
ORDER BY orders_count DESC;

-- 16) Find customers whose total order amount is > 500
-- Note: here we sum price (as in your screenshot). If you want "revenue", use SUM(quantity*price) instead.
SELECT
  customer_name,
  SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer_name
HAVING SUM(quantity * price) > 500
ORDER BY total_revenue DESC;

