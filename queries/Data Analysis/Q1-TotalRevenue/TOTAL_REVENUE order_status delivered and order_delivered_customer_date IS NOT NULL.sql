SELECT 
	SUM(p.payment_value) AS total_revenue
FROM 
	olist_orders_dataset o
JOIN 
	olist_order_payments_dataset p
ON
	o.order_id = p.order_id
WHERE
	o.order_status = 'delivered'
AND
	o.order_delivered_customer_date IS NOT NULL;