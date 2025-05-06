--QUESTION 1 QUERRIES
--Creating the normalized table structure
CREATE TABLE normalized_orders (
    order_product_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    product VARCHAR(100) NOT NULL
);

--Inserting data for Order 101 (John Doe)
INSERT INTO normalized_orders (order_id, customer_name, product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse');

--Inserting data for Order 102 (Jane Smith)
INSERT INTO normalized_orders (order_id, customer_name, product)
VALUES 
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse');

--Inserting data for Order 103 (Emily Clark)
INSERT INTO normalized_orders (order_id, customer_name, product)
VALUES 
    (103, 'Emily Clark', 'Phone');

--QUESTION 2 QUERRIES
