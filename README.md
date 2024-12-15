# BigQuary_Data-Warehouse_ex
Simple example to train how to make a Datawarehouse in BigQuary ,make some quary on it and get insights
# BigQuery Data Warehouse Project

This project demonstrates how to create and manage a data warehouse in BigQuery using a star schema. The project consists of creating dimension and fact tables, inserting data, and running analytical queries.

## Table of Contents
1. [Setup](#setup)
   - [Open BigQuery](#open-bigquery)
   - [Create Dataset](#create-dataset)
2. [Create Tables](#create-tables)
3. [Insert Data](#insert-data)
4. [Query the Data](#query-the-data)
5. [Advanced](#advanced)

## Setup

### Open BigQuery
1. **Sign in to Google Cloud Console**:
   - Go to the [Google Cloud Console](https://console.cloud.google.com/).
   - Sign in with your Google account.

2. **Navigate to BigQuery**:
   - In the left-hand menu, select **BigQuery**.

3. **Select Your Project**:
   - Use the project selector at the top of the page to choose your project.

### Create Dataset
1. **Open BigQuery Console**:
   - Navigate to **BigQuery** from the side menu.

2. **Create a New Dataset**:
   - Click on **Create Dataset**.
   - Enter a name for your dataset (e.g., `data_warehouse`).
   - Set the data location and other settings as needed.
   - Click **Create Dataset**.

## Create Tables

### Create Tables Using SQL
Download the `create_tables.sql` file from this repository and run the script in the BigQuery Console.

#### `create_tables.sql`
```sql
-- Create Customers Table
CREATE TABLE `my-project-id.data_warehouse.customers` (
  customer_id INT64,
  customer_name STRING,
  customer_email STRING,
  customer_address STRING,
  PRIMARY KEY (customer_id)
);

-- Create Products Table
CREATE TABLE `my-project-id.data_warehouse.products` (
  product_id INT64,
  product_name STRING,
  category STRING,
  price FLOAT64,
  PRIMARY KEY (product_id)
);

-- Create Sales Table
CREATE TABLE `my-project-id.data_warehouse.sales` (
  order_id INT64,
  customer_id INT64,
  product_id INT64,
  order_date DATE,
  quantity INT64,
  total FLOAT64,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES `my-project-id.data_warehouse.customers`(customer_id),
  FOREIGN KEY (product_id) REFERENCES `my-project-id.data_warehouse.products`(product_id)
);
