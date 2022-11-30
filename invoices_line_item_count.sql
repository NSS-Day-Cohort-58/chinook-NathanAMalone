SELECT
    i.InvoiceId,
    COUNT(il.InvoiceLineId) NumOfLineItems
FROM Invoice i
JOIN InvoiceLine il
    ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId