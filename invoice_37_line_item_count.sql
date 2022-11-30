SELECT
    COUNT(il.InvoiceLineId) NumOfLineItems,
    il.InvoiceId
FROM InvoiceLine il
WHERE il.InvoiceId = 37