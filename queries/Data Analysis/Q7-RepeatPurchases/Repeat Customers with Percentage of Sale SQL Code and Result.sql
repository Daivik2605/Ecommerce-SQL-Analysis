-- How many customers have made repeat purchases on Olist, and what percentage of total sales do they account for?
WITH repeat_customers AS (
	SELECT
		c.customer_id,
		COUNT(DISTINCT o.order_id) AS num_of_orders,
		SUM(oi.price + oi.freight_value) AS total_spent
	FROM olist_customers_dataset c
	JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
	JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
	WHERE o.order_status = 'delivered'
	GROUP BY c.customer_id
	HAVING count(o.order_id) > 1
)
SELECT
	COUNT(DISTINCT customer_id) AS num_repeat_customers,
	SUM(total_spent) AS repeat_customer_revenue,
	ROUND(100.0 * SUM(total_spent) / (SELECT SUM(price + freight_value) FROM olist_order_items_dataset), 2) AS repeat_customer_percentage
FROM repeat_customers;