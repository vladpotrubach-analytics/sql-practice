SELECT
  user_id,
  COUNT(*) AS orders_count,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY user_id
ORDER BY total_revenue DESC
LIMIT 10;
