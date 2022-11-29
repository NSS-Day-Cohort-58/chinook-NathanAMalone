SELECT
    il.InvoiceLineId,
    t.name
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
ORDER BY il.InvoiceLineId