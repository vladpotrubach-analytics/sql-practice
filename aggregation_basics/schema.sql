-- schema.sql
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  order_id INT,
  customer_name VARCHAR(50),
  country VARCHAR(50),
  product VARCHAR(50),
  quantity INT,
  price DECIMAL(10,2),
  order_date DATE
);

INSERT INTO orders VALUES
(1, 'Alice',   'Poland',  'Laptop',   1, 1200.00, '2024-01-05'),
(2, 'Bob',     'Germany', 'Mouse',    2,   25.00, '2024-01-06'),
(3, 'Charlie', 'Poland',  'Keyboard', 1,   45.00, '2024-01-06'),
(4, 'Alice',   'Poland',  'Mouse',    1,   25.00, '2024-01-07'),
(5, 'David',   'France',  'Monitor',  2,  300.00, '2024-01-08'),
(6, 'Eva',     'Germany', 'Laptop',   1, 1300.00, '2024-01-09'),
(7, 'Frank',   'Poland',  'Monitor',  1,  280.00, '2024-01-10'),
(8, 'Alice',   'Poland',  'Keyboard', 2,   45.00, '2024-01-10');
