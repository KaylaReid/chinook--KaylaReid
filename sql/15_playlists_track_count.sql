--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

SELECT 
		COUNT(pt.TrackId) TracksPerPlaylist,
		pl.Name
FROM PlaylistTrack pt
JOIN Playlist pl ON pl.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId
;

SELECT 
