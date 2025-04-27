SELECT product_category_name, product_id 
FROM olist_products_dataset
WHERE product_category_name IS NULL OR product_category_name = '';
