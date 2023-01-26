SELECT name, SUM(
  CASE WHEN r.distance IS NULL THEN 0
  ELSE r.distance END
) AS travelled_distance
FROM Users as u
LEFT JOIN Rides as r
ON u.id = r.user_id
GROUP BY r.user_id
ORDER BY travelled_distance DESC, name ASC;