-- Total Revenue

SELECT SUM(total_amount) As revenue
FROM purchases;

-- Total orders

SELECT COUNT(DISTINCT order_id)
FROM purchases;

-- Average order value

SELECT ROUND(SUM(total_amount::integer) / COUNT(DISTINCT order_id), 2)
FROM purchases;
