CREATE TABLE olist_order_items_dataset_new (
    order_id TEXT,
    order_item_id INTEGER,
    product_id TEXT,
    seller_id TEXT,
    shipping_limit_date TIMESTAMP,
	price REAL,
	freight_value REAL
);

INSERT INTO olist_order_items_dataset_new
SELECT * FROM olist_order_items_dataset;

DROP TABLE olist_order_items_dataset;
ALTER TABLE olist_order_items_dataset_new RENAME TO olist_order_items_dataset;

