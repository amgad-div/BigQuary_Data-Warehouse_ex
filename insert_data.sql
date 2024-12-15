-- Insert Data into Customers Table
INSERT INTO `quiet-sum-368700.data_warehouse.customers_table` (customer_id, customer_name, customer_email, customer_address)
VALUES
(101, 'Amgad nady', 'amgad@example.com', '123 Main St'),
(102, 'ahmed Ali', 'ahmed@example.com', '456 minia St'),
(103, 'mona Williams', 'mona@example.com', '789 maghagha St');

-- Insert Data into Products Table
INSERT INTO `quiet-sum-368700.data_warehouse.products` (product_id, product_name, category, price)
VALUES
(2001, 'Laptop', 'Electronics', 1000.0),
(2002, 'Headphones', 'Electronics', 200.0),
(2003, 'Coffee Maker', 'Home Appliances', 50.0);

-- Insert Data into Sales Table
INSERT INTO `quiet-sum-368700.data_warehouse.sales` (order_id, customer_id, product_id, order_date, quantity, total)
VALUES
(1, 101, 2001, '2024-12-01', 1, 1000.0),
(2, 102, 2002, '2024-12-01', 2, 400.0),
(3, 103, 2003, '2024-12-02', 1, 50.0);
