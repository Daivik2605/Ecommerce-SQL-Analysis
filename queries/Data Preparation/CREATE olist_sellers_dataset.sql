CREATE TABLE olist_sellers_dataset_new (
    seller_id TEXT PRIMARY KEY,
    seller_zip_code_prefix TEXT,
	seller_city TEXT,
	seller_state TEXT
);

INSERT INTO olist_sellers_dataset_new (seller_id, seller_zip_code_prefix, seller_city, seller_state)
SELECT seller_id, CAST(seller_zip_code_prefix AS TEXT), seller_city, seller_state 
FROM olist_sellers_dataset;

DROP TABLE olist_sellers_dataset;
ALTER TABLE olist_sellers_dataset_new RENAME TO olist_sellers_dataset;