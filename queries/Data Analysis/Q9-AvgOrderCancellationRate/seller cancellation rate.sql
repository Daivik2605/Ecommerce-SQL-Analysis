SELECT
	oi.seller_id,
	COUNT(CASE WHEN o.order_status = 'canceled' THEN o.order_id END) AS num_canceled_orders,
	COUNT(o.order_id) as total_orders,
	ROUND(100.0 * COUNT(CASE WHEN o.order_status = 'canceled' THEN o.order_id END) / COUNT(o.order_id), 2) AS seller_cancellation_rate
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
GROUP BY oi.seller_id
ORDER BY seller_cancellation_rate DESC;