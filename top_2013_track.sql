SELECT
    t.name TrackName,
    COUNT(il.TrackId) HowManyPurchased
FROM Track t
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY TrackName
ORDER BY HowManyPurchased DESC