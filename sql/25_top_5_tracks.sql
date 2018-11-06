--Provide a query that shows the top 5 most purchased songs.

SELECT 
		t.name, 
		SUM (il.Quantity) PurchaseCount
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.Trackid
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY PurchaseCount DESC
LIMIT 5
;
