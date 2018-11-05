--Which country's customers spent the most?

SELECT 
		i.BillingCountry Country,
		Total(i.Total) TotalSales
FROM Invoice i 
GROUP BY Country
ORDER BY TotalSales DESC 
LIMIT 1
;