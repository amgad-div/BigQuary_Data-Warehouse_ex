-- Total Sales per Customer
SELECT
  c.customer_name,
  SUM(s.total) AS total_spent
FROM
  `quiet-sum-368700.data_warehouse.sales` s
JOIN
  `quiet-sum-368700.data_warehouse.customers_table` c
ON
  s.customer_id = c.customer_id
GROUP BY
  c.customer_name
ORDER BY
  total_spent DESC;

-- Sales Breakdown by Product Category
SELECT
  p.category,
  SUM(s.total) AS total_sales
FROM
  `quiet-sum-368700.data_warehouse.sales` s
JOIN
  `quiet-sum-368700.data_warehouse.products` p
ON
  s.product_id = p.product_id
GROUP BY
  p.category
ORDER BY
  total_sales DESC;
