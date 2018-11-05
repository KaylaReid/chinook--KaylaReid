--Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.
 
 --SELECT MAX(AllProfits.Profit) FROM

 --(SELECT 
		--e.FirstName || " " || e.LastName FullName,
		--sum(i.Total) PROFIT
--FROM Employee e
--JOIN Customer c ON e.EmployeeId = c.SupportRepId
--JOIN Invoice i ON c.CustomerId = i.CustomerId 
--WHERE i.InvoiceDate LIKE '%2009%'
--GROUP BY FullName
--ORDER BY PROFIT DESC) AllProfits;
 
SELECT 
		e.FirstName || " " || e.LastName FullName,
		sum(i.Total) PROFIT
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId 
WHERE i.InvoiceDate LIKE '%2009%'
GROUP BY FullName
ORDER BY PROFIT DESC
LIMIT 1
;