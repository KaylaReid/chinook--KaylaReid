--Provide a query that shows the most purchased track of 2013.

SELECT 
		t.name, 
		SUM (il.Quantity) PurchaseCount
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.Trackid
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013--01-01T00:00:00' AND '2013-12-31T23-59-59'
--WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY t.Name
ORDER BY PurchaseCount DESC
;
