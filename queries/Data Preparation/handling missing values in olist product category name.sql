UPDATE olist_products_dataset
SET product_category_name = 'N/A'
WHERE product_category_name IS NULL OR product_category_name = '';

SELECT * FROM olist_products_dataset
WHERE product_category_name = 'N/A';
