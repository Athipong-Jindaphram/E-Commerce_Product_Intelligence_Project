-- Top product

SELECT pr.product_name,
ROUND(SUM(p.total_amount::numeric), 2)
FROM purchases as p
JOIN products as pr
ON p.product_id = pr.product_id
GROUP BY pr.product_name
ORDER BY SUM(p.total_amount) DESC;

-- Revenue by category

SELECT pr.category,
ROUND(SUM(p.total_amount::numeric),2) as revenue
FROM purchases as p
JOIN products as pr
ON p.product_id = pr.product_id
GROUP BY pr.category
ORDER BY revenue DESC;

-- Average rating by category

SELECT p.category,
ROUND(AVG(r.rating), 2) as avg_rating
FROM reviews as r
JOIN products as p
ON r.product_id = p.product_id
GROUP BY p.category
ORDER BY avg_rating DESC;