-- Sessions

SELECT COUNT(*)
FROM sessions

-- Interactions

SELECT COUNT(*)
FROM interactions

-- Purchases

SELECT COUNT(*)
FROM purchases

-- Conversion Rate

SELECT ROUND(
    COUNT(DISTINCT p.purchase_id)::numeric
    / 
    COUNT(DISTINCT s.session_id)::numeric
    * 100,
    2) as conversion_rate
FROM sessions as s
LEFT JOIN purchases as p
ON s.session_id = p.session_id;