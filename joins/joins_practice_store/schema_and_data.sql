-- =========================
-- schema_and_data.sql (PostgreSQL)
-- Retail Store mini-dataset for JOIN practice
-- =========================

DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- Customers
CREATE TABLE customers (
  customer_id   INT PRIMARY KEY,
  customer_name VARCHAR(50),
  city          VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Alice','Gdansk'),
(2,'Bob','Warsaw'),
(3,'Charlie','Gdansk'),
(4,'David','Krakow'),
(5,'Eva','Warsaw'),
(6,'Frank','Wroclaw');  -- customer without orders

-- Products
CREATE TABLE products (
  product_id   INT PRIMARY KEY,
  product_name VARCHAR(50),
  category     VARCHAR(50),
  base_price   NUMERIC(10,2)
);

INSERT INTO products VALUES
(10,'Laptop','Electronics',1200.00),
(11,'Mouse','Accessories',25.00),
(12,'Keyboard','Accessories',45.00),
(13,'Monitor','Electronics',300.00),
(14,'Mousepad','Accessories',10.00),
(15,'Headset','Electronics',150.00); -- product without sales

-- Orders
CREATE TABLE orders (
  order_id     INT PRIMARY KEY,
  customer_id  INT,
  order_date   DATE
);

INSERT INTO orders VALUES
(100,1,'2024-02-01'),
(101,2,'2024-02-01'),
(102,2,'2024-02-05'),
(103,3,'2024-02-02'),
(104,4,'2024-02-03'),
(105,5,'2024-02-04');

-- Order items
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id      INT,
  product_id    INT,
  quantity      INT,
  unit_price    NUMERIC(10,2)
);

INSERT INTO order_items VALUES
(1,100,10,1,1200.00),  -- Alice: Laptop
(2,100,11,1,25.00),    -- Alice: Mouse
(3,101,11,2,25.00),    -- Bob: Mouse x2
(4,102,14,3,10.00),    -- Bob: Mousepad x3
(5,103,12,1,45.00),    -- Charlie: Keyboard
(6,104,13,2,300.00),   -- David: Monitor x2
(7,105,10,1,1300.00);  -- Eva: Laptop (extra price)

-- Payments (not every order has a payment)
CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id   INT,
  paid_at    DATE,
  amount     NUMERIC(10,2),
  status     VARCHAR(20)
);

INSERT INTO payments VALUES
(900,100,'2024-02-01',1225.00,'paid'),
(901,101,'2024-02-01',50.00,'paid'),
(902,104,'2024-02-03',600.00,'paid'),
(903,105,'2024-02-04',1300.00,'paid');
-- Orders 102 and 103 have no payments
