SELECT
    al.Title AlbumName,
    m.Name MediaTypeName,
    g.Name GenreName
FROM Track t
JOIN Album al
    ON al.AlbumId = t.AlbumId
JOIN MediaType m
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g
    ON g.GenreId = t.GenreId
ORDER BY AlbumName