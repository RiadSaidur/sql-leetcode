SELECT d.name AS Department,
e.name AS Employee,
e.salary AS Salary
FROM Employee e
JOIN Department d
ON d.id = e.departmentId
WHERE (e.departmentId, Salary) 
IN (SELECT departmentId, MAX(salary) FROM Employee GROUP BY departmentId)