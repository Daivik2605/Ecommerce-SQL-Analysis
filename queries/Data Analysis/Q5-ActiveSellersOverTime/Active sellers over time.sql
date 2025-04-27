-- How many sellers are active on olist, and how does this number change over time
SELECT 
	oi.seller_id,
	oi.shipping_limit_date,
	strftime('%Y', o.order_purchase_timestamp) AS the_year,
	CASE
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('01', '02', '03') THEN 'Q1'
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('04', '05', '06') THEN 'Q2'
		WHEN strftime('%m', o.order_purchase_timestamp) IN ('07', '08', '09') THEN 'Q3'
		ELSE 'Q4'
	END AS the_quarter,
	COUNT(DISTINCT oi.seller_id) AS num_active_sellers
FROM 
	olist_order_items_dataset oi
JOIN 
	olist_orders_dataset o 
	ON oi.order_id = o.order_id
WHERE
	o.order_status = 'delivered'
GROUP BY the_year, the_quarter
ORDER BY the_year, the_quarter;