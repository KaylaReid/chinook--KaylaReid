--Provide a query that shows the total sales per country.

SELECT 
		i.BillingCountry Country,
		Total(i.Total) TotalSales
FROM Invoice i 
GROUP BY i.BillingCountry
;