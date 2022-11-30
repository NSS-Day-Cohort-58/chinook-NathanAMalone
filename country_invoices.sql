SELECT
    COUNT(i.InvoiceId) TotalInvoices,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry