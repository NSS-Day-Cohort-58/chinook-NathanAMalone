SELECT
    COUNT(i.InvoiceId) TotalInvoices,
    i.InvoiceDate InoviceYear
FROM Invoice i
WHERE i.InvoiceDate LIKE "%2009%"
    OR i.InvoiceDate LIKE "%2011%"
GROUP BY i.InvoiceDate LIKE "2009%"

     