(SELECT salary AS SecondHighestSalary
FROM Employee
GROUP BY salary
ORDER BY salary DESC
LIMIT 1,1)
UNION
(SELECT NULL)
LIMIT 1;