
CREATE VIEW vw_sales_summary as 
SELECT DATE(order_date) as sales_date,
SUM(total_amount) as revenue,
COUNT(DISTINCT order_id) as orders
FROM purchases
GROUP BY DATE(order_date);
