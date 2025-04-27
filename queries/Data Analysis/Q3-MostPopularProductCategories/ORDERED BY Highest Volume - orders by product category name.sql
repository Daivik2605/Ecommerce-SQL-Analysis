SELECT
	p.product_category_name,
	product_category_name_english,
	SUM(oi.price + oi.freight_value) AS total_sales,
	COUNT(DISTINCT oi.order_id) AS total_orders
FROM
	olist_order_items_dataset oi
JOIN
	olist_products_dataset p ON oi.product_id = p.product_id
JOIN
	olist_orders_dataset o on oi.order_id = o.order_id
WHERE
	o.order_status = 'delivered'
	AND o.order_delivered_customer_date IS NOT NULL
GROUP BY p.product_category_name
ORDER BY total_orders DESC;