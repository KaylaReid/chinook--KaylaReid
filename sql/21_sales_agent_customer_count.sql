--Provide a query that shows the count of customers assigned to each sales agent.

SELECT 
		e.FirstName || " " || e.LastName EmployeeFullName,
		COUNT (c.CustomerId) TotalCustomers
		
FROM Employee e 
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY EmployeeFullName
;