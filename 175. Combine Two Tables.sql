SELECT person.firstname AS firstName, person.lastname AS lastName, address.city, address.state 
FROM Person AS person 
LEFT JOIN Address AS address 
ON person.personId = address.personId;