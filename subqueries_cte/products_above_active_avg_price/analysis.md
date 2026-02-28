## Business question
Which active products are priced **above the average** price among active products?

## Output
- `product_id`, `product_name`, `price`

## Approach
Used a **scalar subquery** in the `WHERE` clause:
- inner query computes `AVG(price)` for active products
- outer query filters products with `price > avg_active_price`

## Why a scalar subquery here?
This is a clean and readable way to compare each row to an aggregate benchmark.
Alternative patterns are possible (CTE / window function), but scalar subquery is often the simplest.

## Analytical interpretation (how to use)
Products above the active average price:
- can be premium/flagship items
- may require different marketing positioning
- can be checked for price elasticity or margin contribution

Next steps:
- join with `order_items` to see revenue contribution
- compare conversion/units sold vs price tiers
- identify outliers (very high price but low sales)
