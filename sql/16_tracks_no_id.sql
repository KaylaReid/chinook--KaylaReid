--Provide a query that shows all the Tracks, but displays no IDs.
-- The result should include the Album title, Media type and Genre.

SELECT 
		t.Name TrackName,
		a.Title AlbumTitle,
		mt.Name MediaTypeTable,
		g.Name GenreTypeTable
FROM Track t
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
JOIN Album a ON a.AlbumId = t.AlbumId
;