-- What is the average order cancellation rate on Olist, and how does this impact seller performance?
SELECT
	ROUND(100.0 * COUNT(CASE WHEN o.order_status = 'canceled' THEN o.order_id END)/COUNT(o.order_id), 2) AS avg_order_cancelation_rate
FROM olist_orders_dataset o;