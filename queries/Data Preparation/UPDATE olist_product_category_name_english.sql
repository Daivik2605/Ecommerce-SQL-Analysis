UPDATE olist_products_dataset
SET product_category_name_english = (
	SELECT p.product_category_name_english
	FROM product_category_name_translation p
	WHERE olist_products_dataset.product_category_name = p.product_category_name
)
WHERE EXISTS (
	SELECT 1 FROM product_category_name_translation p
	WHERE olist_products_dataset.product_category_name = p.product_category_name
)
