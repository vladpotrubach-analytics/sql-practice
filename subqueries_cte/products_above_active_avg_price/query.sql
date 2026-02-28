SELECT
  p.product_id,
  p.product_name,
  p.price
FROM products p
WHERE p.active = TRUE
  AND p.price > (
    SELECT AVG(p2.price)
    FROM products p2
    WHERE p2.active = TRUE
  )
ORDER BY p.price DESC, p.product_id;
