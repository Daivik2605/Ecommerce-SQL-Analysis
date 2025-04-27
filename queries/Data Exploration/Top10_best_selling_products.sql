-- Top 10 Best Selling Products
SELECT 
	p.product_category_name,
	COUNT(oi.order_id) AS total_orders,
	ROUND(SUM(oi.price), 2) AS total_revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
	ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_orders DESC
LIMIT 10