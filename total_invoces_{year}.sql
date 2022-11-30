SELECT
    COUNT(i.InvoiceId) TotalInvoices,
    i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate LIKE "%2009%"
    OR i.InvoiceDate LIKE "%2011%"

     