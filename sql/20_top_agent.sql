--Which sales agent made the most in sales over all?

SELECT 
		e.FirstName ||  ' '  || e.LastName AS "Sales Agent Name",
		SUM(i.Total) TotalSales
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY "Sales Agent Name"
LIMIT 1
;