-- Business question:
-- Which users have placed 5 or more orders?

SELECT
    user_id,
    COUNT(*) AS orders_count
FROM orders
GROUP BY user_id
HAVING COUNT(*) >= 5
ORDER BY orders_count DESC;
