-- To get the total revenue generated we need to analyze the order_delivered_customer_date
SELECT 
	order_status,
	COUNT (*) as Invalid_orders
FROM
	olist_orders_dataset
WHERE
	order_delivered_customer_date IS NULL
GROUP BY 
	order_status;
	