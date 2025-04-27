-- To get the AOV, CPO, and Profit Per Order with the Product Categories
SELECT 
	p.product_category_name,
	p.product_category_name_english,
	ROUND(SUM(op.payment_value)/COUNT(DISTINCT oo.order_id), 2) AS AOV,
	ROUND(SUM(oi.price + oi.freight_value) / COUNT(DISTINCT oo.order_id), 0) AS CPO,
	ROUND(SUM(op.payment_value - (oi.price - oi.freight_value)) / COUNT(DISTINCT oo.order_id)) AS profit_per_order
FROM 
	olist_orders_dataset oo
JOIN 
	olist_order_payments_dataset op ON oo.order_id = op.order_id
JOIN 
	olist_order_items_dataset oi ON oo.order_id = oi.order_id
JOIN
	olist_products_dataset p on oi.product_id = p.product_id
WHERE
	oo.order_status = 'delivered'
	AND oo.order_delivered_customer_date IS NOT NULL
GROUP BY p.product_category_name
ORDER BY AOV DESC;
