-- Row Count

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM sessions;
SELECT COUNT(*) FROM interactions;
SELECT COUNT(*) FROM purchases;
SELECT COUNT(*) FROM reviews;

-- Distinct PK

SELECT COUNT(DISTINCT user_id)
FROM users;

-- FK Validation

SELECT COUNT(*)
FROM purchases as p
LEFT JOIN users as u
ON p.user_id = u.user_id
WHERE u.user_id IS NULL;

