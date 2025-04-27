-- What is the distribution of seller ratings on Olist, and how does this impact sales performance?
SELECT
	CASE
		WHEN r.review_score = 1 THEN 'Review Score 1'
		WHEN r.review_score = 2 THEN 'Review Score 2'
		WHEN r.review_score = 3 THEN 'Review Score 3'
		WHEN r.review_score = 4 THEN 'Review Score 4'
		WHEN r.review_score = 5 THEN 'Review Score 5'
	END AS the_review,
	COUNT(DISTINCT oi.seller_id) AS num_sellers,
	COUNT(oi.order_id) AS num_of_orders,
	ROUND(SUM(oi.price + oi.freight_value), 2) AS total_revenue
FROM 
	olist_order_items_dataset oi
JOIN 
	olist_orders_dataset o 
	ON oi.order_id = o.order_id
JOIN 
	olist_order_reviews_dataset r ON oi.order_id = r.order_id
WHERE
	o.order_status = 'delivered'
GROUP BY the_review
ORDER BY the_review;