--Provide a query that shows the most purchased track of 2013.

SELECT 
		COUNT(il.TrackId) TrackTotal
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY il.TrackId
WHERE i.InvoiceDate LIKE '%2013%'
;

