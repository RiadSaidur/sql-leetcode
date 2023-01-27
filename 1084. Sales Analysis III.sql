SELECT p.product_id AS product_id, p.product_name AS product_name
FROM Product as p
JOIN Sales AS s
ON s.product_id = p.product_id
GROUP BY p.product_id
HAVING MIN(s.sale_date) >= DATE("2019-01-01")
AND MAX(s.sale_date) <= DATE("2019-03-31");