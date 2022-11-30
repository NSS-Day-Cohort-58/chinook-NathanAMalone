SELECT
    pl.Name,
    COUNT(plt.TrackId) NumOfTracks
FROM Playlist pl
JOIN PlaylistTrack plt
    ON plt.PlaylistId = pl.PlaylistId
GROUP BY pl.PlaylistId