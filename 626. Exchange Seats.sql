SELECT (
  CASE 
    WHEN id % 2 = 1 AND students != id THEN id + 1
    WHEN id % 2 = 1 AND students = id THEN id
    ELSE id - 1
  END
) as id, student
FROM seat, (SELECT COUNT(*) AS students FROM seat) as seat_count
ORDER BY id ASC;