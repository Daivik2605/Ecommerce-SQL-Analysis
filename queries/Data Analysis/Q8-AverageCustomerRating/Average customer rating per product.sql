-- What is the average customer rating for products sold on Olist, and how does this impact sales performance?
SELECT 
    p.product_id,
	P.product_category_name_english,
    ROUND(AVG(r.review_score), 2) AS avg_rating,
    COUNT(DISTINCT oi.order_id) AS num_orders,
    ROUND(SUM(oi.price + oi.freight_value), 2) AS total_revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p ON oi.product_id = p.product_id
JOIN olist_order_reviews_dataset r ON oi.order_id = r.order_id
JOIN olist_orders_dataset o ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY p.product_id
ORDER BY avg_rating DESC;
