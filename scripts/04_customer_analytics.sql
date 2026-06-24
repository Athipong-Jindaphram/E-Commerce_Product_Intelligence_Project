-- Revenue by gender

SELECT u.gender,
ROUND(SUM(p.total_amount::numeric),2) as total_revenue
FROM purchases as p
JOIN users as u
ON p.user_id = u.user_id
GROUP BY u.gender
ORDER BY total_revenue DESC;

-- Revenue by country

SELECT u.country,
ROUND(SUM(p.total_amount::numeric), 2) as total_revenue
FROM purchases as p
JOIN users as u
ON p.user_id = u.user_id
GROUP BY u.country 
ORDER BY total_revenue DESC;

-- Top customers

SELECT u.user_id,
ROUND(SUM(p.total_amount::numeric), 2) as revenue
FROM purchases as p
JOIN users as u
ON p.user_id = u.user_id
GROUP BY u.user_id
ORDER BY revenue DESC;
