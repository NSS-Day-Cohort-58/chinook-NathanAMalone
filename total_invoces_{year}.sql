SELECT
    COUNT(i.InvoiceId) TotalInvoices
FROM Invoice i
WHERE i.InvoiceDate LIKE "%2009%"
    OR i.InvoiceDate LIKE "%2011%"

     