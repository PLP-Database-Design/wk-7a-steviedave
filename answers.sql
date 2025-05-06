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
--Creating Orders table to store order header information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

--Creating OrderItems table for products and quantities
CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    Product VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    UNIQUE KEY (OrderID, Product) -- Composite key to prevent duplicate products per order
);

--Populating the Orders table with distinct order information
INSERT INTO Orders (OrderID, CustomerName)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

--Populating the OrderItems table with product details
INSERT INTO OrderItems (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
FROM OrderDetails;

--Dropping the original denormalized table
DROP TABLE OrderDetails;
