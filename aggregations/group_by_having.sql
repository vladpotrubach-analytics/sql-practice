SELECT
  DATE_TRUNC('month', order_date) AS month,
  COUNT(*) AS orders_count,
  SUM(revenue) AS total_revenue,
  AVG(revenue) AS avg_order_value
FROM orders
GROUP BY 1
ORDER BY 1;
