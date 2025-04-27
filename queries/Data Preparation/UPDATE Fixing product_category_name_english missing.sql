SELECT 
product_category_name,
product_category_name_english
FROM olist_products_dataset
WHERE product_category_name = 'portateis_cozinha_e_preparadores_de_alimentos';

SELECT 
product_category_name,
product_category_name_english
FROM olist_products_dataset
WHERE product_category_name = 'pc_gamer';

UPDATE olist_products_dataset
SET product_category_name_english = 'portable kitchens and food preparers'
WHERE product_category_name = 'portateis_cozinha_e_preparadores_de_alimentos';

UPDATE olist_products_dataset
SET product_category_name_english = 'pc_gamer'
WHERE product_category_name = 'pc_gamer';
