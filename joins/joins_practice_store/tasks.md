# JOINs Practice — Retail Store (Tasks)

All tasks are based on the mini retail dataset:
`customers`, `products`, `orders`, `order_items`, `payments`.

---

## Task 1 — INNER JOIN (base)
Return the list of orders with:
- `order_id`, `order_date`, `customer_name`

---

## Task 2 — INNER JOIN + sorting
Return all order item rows with customer and product details:
- `customer_name`, `order_id`, `product_name`, `quantity`, `unit_price`

Sort the result so it’s easy to read (by order, then by item).

---

## Task 3 — LEFT JOIN (customers without orders)
Return all customers and their `order_id`.
If a customer has no orders, `order_id` must be `NULL`.

Show:
- `customer_name`, `order_id`

---

## Task 4 — LEFT JOIN + filter (no orders)
Find customers who have **zero orders**.

Return:
- `customer_id`, `customer_name`

---

## Task 5 — RIGHT JOIN (mirror)
Return all products and sales information.
If a product has no sales, sales fields must be `NULL`.

Show:
- `product_name`, `order_id`, `quantity`

---

## Task 6 — Aggregation + JOIN (revenue per customer)
Calculate total revenue per customer.

Return:
- `customer_name`, `total_revenue`

Where:
- `total_revenue = SUM(quantity * unit_price)`

---

## Task 7 — Aggregation + GROUP BY + HAVING
Find customers whose `total_revenue > 500`.

Return:
- `customer_name`, `total_revenue`

---

## Task 8 — Top-N
Return top-3 customers by total revenue (descending).

Return:
- `customer_name`, `total_revenue`

---

## Task 9 — JOIN 3–4 tables (orders → items → products → customers)
Calculate revenue by product category.

Return:
- `category`, `revenue`

Where:
- `revenue = SUM(quantity * unit_price)`

---

