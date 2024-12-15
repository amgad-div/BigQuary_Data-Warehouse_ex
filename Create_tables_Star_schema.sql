CREATE TABLE 'quiet-sum-368700.data_warehouse.Customers_table' (
  customer_id INT64,
  customer_name STRING,
  customer_email STRING,
  customer_address STRING,
  PRIMARY KEY (customer_id)
);

CREATE TABLE 'quiet-sum-368700.data_warehouse.products' (
  product_id INT64,
  product_name STRING,
  category STRING,
  price FLOAT64,
  PRIMARY KEY (product_id)
);

CREATE TABLE 'quiet-sum-368700.data_warehouse.sales' (
  order_id INT64,
  customer_id INT64,
  product_id INT64,
  order_date DATE,
  quantity INT64,
  total FLOAT64,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES `your_project_id.data_warehouse.customers`(customer_id),
  FOREIGN KEY (product_id) REFERENCES `your_project_id.data_warehouse.products`(product_id)
);
