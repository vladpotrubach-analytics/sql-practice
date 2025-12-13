-- Ranking clients by revenue (overall)
WITH user_rev AS (
  SELECT user_id, SUM(revenue) AS total_revenue
  FROM sales
  GROUP BY user_id
)
SELECT
  user_id,
  total_revenue,
  RANK()        OVER (ORDER BY total_revenue DESC) AS rnk,
  DENSE_RANK()  OVER (ORDER BY total_revenue DESC) AS dense_rnk,
  ROW_NUMBER()  OVER (ORDER BY total_revenue DESC) AS rownum
FROM user_rev
ORDER BY total_revenue DESC;
