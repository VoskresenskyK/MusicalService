/* Задание 2 */
-- 1
SELECT tracks_name, tracks_duration FROM Tracks
ORDER BY tracks_duration DESC
LIMIT 1;
-- 2
SELECT tracks_name, tracks_duration FROM Tracks
WHERE tracks_duration >= 210;
-- 3
SELECT collections_name FROM Collections
WHERE realise_year BETWEEN 2018 AND 2020;
-- 4
SELECT artists_name FROM Artists 
WHERE artists_name NOT LIKE '% %';
-- 5
SELECT tracks_name FROM Tracks
WHERE tracks_name ILIKE '%my%' OR tracks_name ILIKE '%мой%';
/* Задание 3 */
-- 1
SELECT Styleid, COUNT(*) AS executor_count FROM StyleArtists 
GROUP BY Styleid;
-- 2
SELECT COUNT(*) AS track_count 
FROM tracks 
WHERE tracks.albumid IN (SELECT id FROM albums WHERE realise_year BETWEEN 2019 AND 2020);
-- 3
SELECT tracks.albumid, AVG(tracks_duration) AS average_duration 
FROM tracks 
GROUP BY tracks.albumid;
-- 4
SELECT artists_name
FROM Artists
LEFT JOIN ArtistsAlbums ON artists.id = ArtistsAlbums.ArtistID  
LEFT JOIN albums ON albums.id = ArtistsAlbums.AlbumID
GROUP BY artists.artists_name
HAVING SUM(CASE WHEN albums.realise_year = 2020 THEN 1 ELSE 0 END) = 0 
ORDER BY artists.artists_name;
-- 5
SELECT Collections.collections_name 
FROM Collections 
JOIN CollectionsTracks ON collections.id = CollectionsTracks.CollectionID 
JOIN tracks ON tracks.id = CollectionsTracks.TrackID 
JOIN ArtistsAlbums ON tracks.AlbumID = ArtistsAlbums.AlbumID
JOIN Artists ON Artists.id = ArtistsAlbums.ArtistID
WHERE Artists.artists_name LIKE 'Kanye West';
