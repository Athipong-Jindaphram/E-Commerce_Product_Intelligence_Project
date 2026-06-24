-- Missing Value

SELECT *
FROM users
WHERE age IS NULL;

-- Duplicate Check

SELECT user_id, COUNT(*)
FROM users
GROUP BY user_id
HAVING COUNT(*) > 1;

-- Outlier check

SELECT *
FROM products
WHERE price < 0;