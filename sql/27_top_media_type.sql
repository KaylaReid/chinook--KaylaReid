--Provide a query that shows the most purchased Media Type.
SELECT MediaTypePerchases.Name, MAX(TotalBought) 

FROM 

(SELECT 
		mt.Name,
		SUM(il.Quantity) TotalBought
FROM MediaType mt
JOIN Track t ON mt.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY mt.Name
ORDER BY TotalBought DESC
--LIMIT 1
) MediaTypePerchases; 