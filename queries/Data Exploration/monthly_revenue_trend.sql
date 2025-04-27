-- Monthly Revenue Trend
SELECT 
	strftime('%Y-%m', o.order_purchase_timestamp) AS month,
	round(SUM(oi.price), 2) AS monthly_revenue
FROM
	olist_orders_dataset o
JOIN
	olist_order_items_dataset oi
ON
	o.order_id = oi.order_id
WHERE
	o.order_status = 'delivered'
GROUP BY month
ORDER BY month;