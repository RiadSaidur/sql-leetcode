SELECT E1.name as Employee
FROM Employee E1
WHERE E1.salary > (SELECT salary FROM Employee E2 WHERE E2.id = E1.managerId);