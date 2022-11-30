--Top 3 by number of songs sold
SELECT
    ar.Name ArtistName,
    COUNT(il.InvoiceLineId) SongsSold
FROM Artist ar
JOIN Album al
    ON al.ArtistId = ar.ArtistId
JOIN Track t
    ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
GROUP BY ArtistName
ORDER BY SongsSold DESC
LIMIT 3

--Top 3 by revenue of songs sold
SELECT
    ar.Name ArtistName,
    SUM(i.Total) SongRevenue
FROM Artist ar
JOIN Album al
    ON al.ArtistId = ar.ArtistId
JOIN Track t
    ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
GROUP BY ArtistName
ORDER BY SongRevenue DESC
LIMIT 3
