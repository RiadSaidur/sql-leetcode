SELECT DISTINCT(name)
FROM SalesPerson as salesPerson
WHERE salesPerson.sales_id
NOT IN (
  SELECT sales_id FROM Orders as orders
  LEFT JOIN Company as company ON orders.com_id = company.com_id
  WHERE company.name = "RED"
);