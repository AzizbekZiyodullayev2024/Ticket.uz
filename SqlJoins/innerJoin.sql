-- Users jadvali
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Orders jadvali
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product VARCHAR(50)
);

-- Ma'lumotlar kiritish
INSERT INTO users (user_id, name) VALUES
(1, 'Ali'),
(2, 'Vali'),
(3, 'Sardor');

INSERT INTO orders (order_id, user_id, product) VALUES
(1, 1, 'Phone'),
(2, 1, 'Laptop'),
(3, 2, 'Tablet');

SELECT users.name, orders.product
FROM users
INNER JOIN orders
ON users.user_id = orders.user_id;
-- Natija: Ali - Phone, Ali - Laptop, Vali - Tablet

SELECT users.name, orders.product
FROM users
LEFT JOIN orders
ON users.user_id = orders.user_id;
-- Natija: Ali - Phone, Ali - Laptop, Vali - Tablet, Sardor - NULL

SELECT users.name, orders.product
FROM users
RIGHT JOIN orders
ON users.user_id = orders.user_id;
-- Natija: Ali - Phone, Ali - Laptop, Vali - Tablet

SELECT users.name, orders.product
FROM users
FULL JOIN orders
ON users.user_id = orders.user_id;
-- Natija: Ali - Phone, Ali - Laptop, Vali - Tablet, Sardor - NULL

SELECT users.name, orders.product
FROM users
CROSS JOIN orders;
-- Natija: Har bir foydalanuvchi har bir buyurtma bilan kombinatsiyalanadi