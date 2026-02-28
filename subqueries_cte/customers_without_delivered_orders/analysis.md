## Business question
Which customers have **never** completed a delivered order?

## Output
- `customer_id`, `full_name`, `city`

## Approach
A **correlated subquery** with `NOT EXISTS` checks the absence of at least one order with `status = 'delivered'` for each customer.

## Why `NOT EXISTS`?
`NOT EXISTS` is generally preferred over `NOT IN` because it is **NULL-safe**:
- `NOT IN (...)` can behave unexpectedly when the subquery returns `NULL`s.
- `NOT EXISTS` avoids that pitfall and is often considered more robust.

## Analytical interpretation (how to use)
Customers without delivered orders may indicate:
- early churn risk
- checkout/payment failures
- delivery issues
- low-quality acquisition channels (traffic that doesn’t convert)

Next steps:
- segment by `signup_date` (new vs old customers)
- check if they have mostly `cancelled` / `placed` / `shipped` statuses
- compute conversion funnel metrics (signup → order placed → delivered)
