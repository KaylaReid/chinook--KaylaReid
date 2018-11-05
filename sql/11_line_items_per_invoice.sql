-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
		il.InvoiceId,
		COUNT(il.InvoiceId) InvoiceLinesPerInvoice
FROM InvoiceLine il
GROUP BY il.InvoiceId
;