--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
		il.InvoiceLineid,
		t.Name,
		art.Name
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album a ON a.AlbumId = t.AlbumId 
JOIN Artist art ON art.ArtistId = a.ArtistId
;