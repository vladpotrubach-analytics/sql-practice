# JOINs Practice — Retail Store (PostgreSQL)

This folder contains a small reproducible SQL practice case based on a **mini retail dataset**.
The goal is to demonstrate practical JOIN patterns and common analytics queries used in day-to-day work.

## What’s inside

- `schema_and_data.sql` — dataset schema + seed data (CREATE TABLE + INSERT)
- `tasks.md` — task statements (no solutions)
- `solutions.sql` — solutions for all tasks

## Dataset overview

Tables:
- `customers` — customers and their cities
- `products` — product catalog (with categories)
- `orders` — orders (customer + date)
- `order_items` — line items (product, quantity, price)
- `payments` — payments (not every order has a payment)

The dataset intentionally includes edge cases:
- a customer with **no orders**
- a product with **no sales**
- orders with **no payments**

## Skills demonstrated

- INNER / LEFT / RIGHT JOIN
- Joining multiple tables (3–4 tables)
- Aggregations and `GROUP BY`
- `HAVING` filtering
- Top-N queries (`ORDER BY ... LIMIT`)
- Realistic “interview-style” logic:
  - computing order totals
  - checking payment status vs order totals using `CASE`

## How to run (DB Fiddle / PostgreSQL)

1. Open DB Fiddle and select **PostgreSQL**
2. Paste and run `schema_and_data.sql`
3. Paste and run queries from `solutions.sql`

You can also copy individual tasks from `tasks.md` and solve them yourself before checking solutions.

## Notes

This is practice-oriented code, but structured like a mini-project:
- reproducible dataset
- clear tasks
- clean solutions
