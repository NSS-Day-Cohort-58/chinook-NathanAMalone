--Top 3 by number of songs sold
SELECT
    m.Name MediaTypeName,
    COUNT(il.InvoiceLineId) MediaTypeSold
FROM MediaType m
JOIN Track t
    ON t.MediaTypeId = m.MediaTypeId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
GROUP BY MediaTypeName
ORDER BY MediaTypeSold DESC