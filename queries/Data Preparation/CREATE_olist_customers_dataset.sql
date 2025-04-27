CREATE TABLE olist_customers_dataset_new (
    customer_id TEXT PRIMARY KEY,
    customer_unique_id TEXT,
    customer_zip_code_prefix TEXT,
    customer_city TEXT,
    customer_state TEXT
);

-- DROP TABLE olist_customers_dataset_new
INSERT INTO olist_customers_dataset_new (customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state)
SELECT customer_id, customer_unique_id, CAST(customer_zip_code_prefix AS TEXT), customer_city, customer_state 
FROM olist_customers_dataset;

DROP TABLE olist_customers_dataset;
ALTER TABLE olist_customers_dataset_new RENAME TO olist_customers_dataset;




