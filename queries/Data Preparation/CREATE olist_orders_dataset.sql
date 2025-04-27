CREATE TABLE olist_orders_dataset_new (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);
INSERT INTO olist_orders_dataset_new
SELECT * FROM olist_orders_dataset;

DROP TABLE olist_orders_dataset;
ALTER TABLE olist_orders_dataset_new RENAME TO olist_orders_dataset;
