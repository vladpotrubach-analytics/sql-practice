-- Join users with orders
SELECT
    u.user_id,
    COUNT(o.order_id) AS orders_count
FROM users u
LEFT JOIN orders o
    ON u.user_id = o.user_id
GROUP BY u.user_id;
