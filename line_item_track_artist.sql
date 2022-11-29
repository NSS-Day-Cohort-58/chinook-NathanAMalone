SELECT
    il.InvoiceLineId,
    t.Name,
    ar.Name
FROM InvoiceLine il
JOIN Track t
    ON t.TrackId = il.TrackId
JOIN Album al
    on al.AlbumId = t.AlbumId
JOIN Artist ar
    ON ar.ArtistId = al.ArtistId
ORDER BY il.InvoiceLineId