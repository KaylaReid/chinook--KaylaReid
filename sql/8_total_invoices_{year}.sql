-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(i.InvoiceId) NumberOfInvoices,
       STRFTIME('%Y',i.InvoiceDate) AS InvoiceYear
FROM Invoice i
WHERE InvoiceYear = '2011'
OR InvoiceYear = '2009'
GROUP BY InvoiceYear
;