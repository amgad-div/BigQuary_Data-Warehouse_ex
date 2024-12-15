# BigQuery Data Warehouse Project

This project demonstrates how to create a data warehouse in BigQuery using a star schema with a fact table and dimension tables. The example uses an online store's sales data.

## Table of Contents
1. [Setup](#setup)
2. [Create Tables](#create-tables)
   - [Create Dimension Tables](#create-dimension-tables)
   - [Create Fact Table](#create-fact-table)
3. [Insert Data](#insert-data)
4. [Query the Data](#query-the-data)


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
#### you can create using sql [Create_tables_Star_schema.sql](https://github.com/amgad-div/BigQuary_Data-Warehouse_ex/blob/main/Create_tables_Star_schema.sql)
#### or cteate manually as following: 
1. **Open BigQuery Console**:
   - Navigate to **BigQuery** from the side menu.

2. **Create a New Dataset**:
   - Click on **Create Dataset**.
   - Enter a name for your dataset (e.g., `data_warehouse`).
   - Set the data location and other settings as needed.
   - Click **Create Dataset**.
## Create Tables

### Create Dimension Tables

#### Create Customers Table
1. **Open BigQuery Console**:
   - Navigate to your dataset (e.g., `data_warehouse`).
  

2. **Create a New Table**:
   - Click **Create Table**.
   - Choose **Empty table** as the source.
   - Enter the table name: `customers`.
   - Define the schema:
     - `customer_id` (INT64)
     - `customer_name` (STRING)
     - `customer_email` (STRING)
     - `customer_address` (STRING)
   - Click **Create Table**.

#### Create Products Table
1. **Open BigQuery Console**:
   - Navigate to your dataset (e.g., `data_warehouse`).

2. **Create a New Table**:
   - Click **Create Table**.
   - Choose **Empty table** as the source.
   - Enter the table name: `products`.
   - Define the schema:
     - `product_id` (INT64)
     - `product_name` (STRING)
     - `category` (STRING)
     - `price` (FLOAT64)
   - Click **Create Table**.

### Create Fact Table

#### Create Sales Table
1. **Open BigQuery Console**:
   - Navigate to your dataset (e.g., `data_warehouse`).

2. **Create a New Table**:
   - Click **Create Table**.
   - Choose **Empty table** as the source.
   - Enter the table name: `sales`.
   - Define the schema:
     - `order_id` (INT64)
     - `customer_id` (INT64)
     - `product_id` (INT64)
     - `order_date` (DATE)
     - `quantity` (INT64)
     - `total` (FLOAT64)
   - Click **Create Table**.

## Insert Data
#### Insert using sql [insert_data.sql](https://github.com/amgad-div/BigQuary_Data-Warehouse_ex/blob/main/insert_data.sql)


## Query the Data and make insights
#### using sql[query_data.sql](https://github.com/amgad-div/BigQuary_Data-Warehouse_ex/blob/main/query_data.sql)


