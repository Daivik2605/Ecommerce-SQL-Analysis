-- Revenue Analysis
-- Total Revenue Calculation
SELECT 
	round(SUM(PRICE), 2) AS total_revenue
FROM olist_order_items_dataset;