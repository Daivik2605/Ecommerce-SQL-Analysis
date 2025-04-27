SELECT * FROM olist_orders_dataset LIMIT 5;
SELECT * FROM olist_order_items_dataset LIMIT 5;
SELECT * FROM olist_customers_dataset LIMIT 5;

-- Getting the count of rows individually
SELECT COUNT(*) FROM olist_orders_dataset;
SELECT COUNT(*) FROM olist_order_items_dataset;
SELECT COUNT(*) FROM olist_customers_dataset;

-- Doing a UNION to get number of rows in each TABLE
SELECT 'orders' as table_name, COUNT(*) AS row_count FROM olist_orders_dataset
UNION
SELECT 'order_items', COUNT(*) AS row_count FROM olist_order_items_dataset
UNION
SELECT 'customers', COUNT(*) FROM olist_customers_dataset



