UPDATE olist_products_dataset
SET product_category_name_english = 'N/A'
WHERE product_category_name_english IS NULL OR product_category_name = '';

SELECT * FROM olist_products_dataset
WHERE product_category_name_english = 'N/A';

PRAGMA table_info(olist_products_dataset);


