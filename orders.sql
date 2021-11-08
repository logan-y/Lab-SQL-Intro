-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders2(
    id SERIAL PRIMARY KEY,
    order_id INTEGER,
    person_id SERIAL ,
    product_name VARCHAR(50),
    product_price FLOAT,
    quantity INTEGER
);

-- Add 5 orders to the orders table.
    -- Make orders for at least two different people.
    -- person_id should be different for different people.
INSERT INTO orders (order_id, product_name, product_price, quantity)
VALUES (29,'linguini', 4.50, 3),
(3, 'spaghett', 3.50, 1),
(6, 'baguett', 100.99, 1),
(13, 'bobaFett', 1.50, 1),
(56, 'spicy', 25.99, 1);

-- Select all the records from the orders table.
SELECT * 
FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(price)
FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price*quantity) as Result
FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price*quantity) as indiv_price
FROM orders
WHERE person_id = 2;
