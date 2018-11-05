--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT 
		COUNT(i.InvoiceId),
		e.FirstName || ' ' || e.LastName FullName, 
		e.Title
FROM Invoice i 
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY FullName;
--ORDER BY FullName DESC;



