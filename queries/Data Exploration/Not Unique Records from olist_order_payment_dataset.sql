-- To get the not unique records from olist_order_payments_dataset
SELECT *, count(*) 
FROM olist_order_payments_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;
