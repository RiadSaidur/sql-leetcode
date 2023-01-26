SELECT user_id as buyer_id, join_date, COUNT(
  CASE WHEN YEAR(o.order_date) = 2019 AND o.order_id IS NULL THEN 0
  WHEN YEAR(o.order_date) = 2019 THEN o.order_id END
) AS orders_in_2019 
FROM Users as u
LEFT JOIN Orders as o
ON u.user_id = o.buyer_id
GROUP BY u.user_id