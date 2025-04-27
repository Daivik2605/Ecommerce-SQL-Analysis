SELECT
	strftime('%Y', o.order_purchase_timestamp) AS the_year,
	CASE
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('01', '02', '03') THEN 'Q1'
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('04', '05', '06') THEN 'Q2'
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('07', '08', '09') THEN 'Q3'
		ELSE 'Q4'
	END AS the_quarter,
	ROUND(SUM(p.payment_value), 0) AS revenue
FROM
	olist_orders_dataset o
JOIN olist_order_payments_dataset p 
ON
	o.order_id = p.order_id
WHERE 
	o.order_status = 'delivered'
AND 
	o.order_delivered_customer_date IS NOT NULL
GROUP BY the_year, the_quarter
ORDER BY the_year, the_quarter;