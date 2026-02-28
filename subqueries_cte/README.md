# Subqueries & CTE — SQL Analytical Explorations (PostgreSQL)

This folder contains structured SQL explorations focused on **subqueries** (scalar and correlated) and **CTEs** on a small e-commerce dataset.

Each case includes:
- a **business question**
- a **clean SQL query**
- short **analysis notes** (reasoning, trade-offs, and interpretation)

## Cases

### 1) Customers without delivered orders (NOT EXISTS)
**Goal:** identify customers who have never had a delivered order.  
Path: `customers_without_delivered_orders/`

### 2) Active products priced above active average (scalar subquery)
**Goal:** find active products whose price is above the average price of active products.  
Path: `products_above_active_avg_price/`

## Notes on style
- Queries are written in a clean, production-like style.
- Where relevant, I prefer **NOT EXISTS** over **NOT IN** due to NULL-safety.
- I keep SQL files minimal, and store interpretation in `analysis.md`.
