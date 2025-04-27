SELECT
	p.product_category_name,
	p.product_category_name_english,
	avg(o.price) AS average_order
FROM
	olist_order_items_dataset o
JOIN 
	olist_products_dataset p
ON
	o.product_id = p.product_id
GROUP BY product_category_name
ORDER BY average_order DESC
LIMIT 10;