-- JOIN practice
-- Tables:
-- users(user_id, name, country)
-- orders(order_id, user_id, order_date, amount)

-- INNER JOIN: users with at least one order
SELECT
  u.user_id,
  u.name,
  o.order_id,
  o.amount
FROM users u
JOIN orders o
  ON u.user_id = o.user_id;


-- LEFT JOIN: all users, including those without orders
SELECT
  u.user_id,
  u.name,
  o.order_id,
  o.amount
FROM users u
LEFT JOIN orders o
  ON u.user_id = o.user_id;


-- RIGHT JOIN: all orders, even if user info is missing
SELECT
  u.user_id,
  u.name,
  o.order_id,
  o.amount
FROM users u
RIGHT JOIN orders o
  ON u.user_id = o.user_id;


-- FULL OUTER JOIN: all users and all orders
SELECT
  u.user_id,
  u.name,
  o.order_id,
  o.amount
FROM users u
FULL OUTER JOIN orders o
  ON u.user_id = o.user_id;


-- Number of orders per user
SELECT
  u.user_id,
  u.name,
  COUNT(o.order_id) AS total_orders
FROM users u
LEFT JOIN orders o
  ON u.user_id = o.user_id
GROUP BY u.user_id, u.name
ORDER BY total_orders DESC;


-- Users with 5 or more orders
SELECT
  u.user_id,
  u.name,
  COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o
  ON u.user_id = o.user_id
GROUP BY u.user_id, u.name
HAVING COUNT(o.order_id) >= 5;
