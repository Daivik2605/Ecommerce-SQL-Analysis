-- Total count of orders 
SELECT
	COUNT (*) AS num_order
FROM
	olist_orders_dataset
WHERE 
	order_status = 'delivered'
	AND order_delivered_customer_date IS NOT NULL;