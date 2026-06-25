SELECT
    c.customer_id,
    c.customer_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.product_name IN ('A', 'B', 'C')
GROUP BY
    c.customer_id,
    c.customer_name
HAVING
    COUNT(DISTINCT CASE
        WHEN o.product_name IN ('A', 'B') THEN o.product_name
    END) = 2
    AND SUM(CASE
        WHEN o.product_name = 'C' THEN 1 ELSE 0
    END) = 0
ORDER BY
    c.customer_name;