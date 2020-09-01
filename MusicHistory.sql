  /* 1 */
  SELECT * 
  FROM Genre;

  /* 2 */
  SELECT *
  FROM Artist
  ORDER BY ArtistName;

  /* 3 */
  SELECT Title, ArtistName
  FROM Song
  INNER JOIN Artist
    ON Song.ArtistId = Artist.Id
  
  /* 4 */
  SELECT a.ArtistName
  FROM Album al
  LEFT JOIN Artist a 
    ON a.Id = al.ArtistId
  LEFT JOIN Genre g 
    ON g.id = al.GenreId
  WHERE g.Label = 'Pop';

  /* 5 */
  SELECT a.ArtistName
  FROM Album s
  LEFT JOIN Artist a 
    ON a.Id = s.ArtistId
  LEFT JOIN Genre g 
    ON g.id = s.GenreId
  WHERE g.Label = 'Rock'
    OR g.label = 'Jazz';

  /* 6 */
  SELECT DISTINCT a.Title AS Album
  FROM Song s
  RIGHT JOIN Album a
    ON s.AlbumId = a.Id
  WHERE s.Title IS NULL;

  /* 7 */
  INSERT INTO Artist
  (ArtistName, YearEstablished)
  VALUES ('Deftones', 1992);

  /* 8 */
  INSERT INTO Album
  (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) 
  VALUES ('White Pony', '6/20/2000', 2880, 'Maverick', 28, 2);

  SELECT * FROM Song;

  /* 9 */
  INSERT INTO Song 
  (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
  VALUES ('Digital Bath', 240, '6/20/2000', 2, 28, 23);

  INSERT INTO Song 
  (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
  VALUES ('Knife Party', 260, '6/20/2000', 2, 28, 23);

  INSERT INTO Song 
  (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
  VALUES ('Passenger', 200, '6/20/2000', 2, 28, 23);

  /* 10 */
  SELECT ArtistName, a.Title, s.Title 
  FROM Song s 
  LEFT JOIN Album a 
    ON s.AlbumId = a.Id
  LEFT JOIN Artist
    ON Artist.Id = a.ArtistId
  WHERE ArtistName = 'Deftones';

  /* 11 */
  SELECT Album.Title, COUNT(Song.Id) as Songs
  FROM Album
  LEFT JOIN Song
    ON Album.Id = Song.AlbumId
  GROUP BY Album.Title;

  /* 12 */
  SELECT ArtistName, COUNT(Song.Id) as Songs
  FROM Artist
  LEFT JOIN Song
    ON Artist.Id = Song.ArtistId
  GROUP BY ArtistName;

  /* 13 */
  SELECT g.label, COUNT(Song.Id) as Songs
  FROM Genre g
  LEFT JOIN Song
    ON g.Id = Song.GenreId
  GROUP BY g.label;

  /* 14 */
  SELECT ArtistName, COUNT(Album.Label) as Labels
  FROM Artist
  LEFT JOIN Album
    ON Artist.Id = Album.ArtistId
  GROUP BY ArtistName
  HAVING COUNT(Album.Label) >= 2;
  

  /* 15 */
  SELECT Title, AlbumLength
  FROM Album
  WHERE AlbumLength = (
    SELECT MAX(AlbumLength)
    FROM Album); 

  /* 16 */
  SELECT Title, SongLength
  FROM Song
  WHERE SongLength = (
    SELECT MAX(SongLength)
    FROM Song); 

  /* 17 */
  SELECT s.Title AS SongName, a.Title AS AlbumTitle, SongLength
  FROM Song s
  LEFT JOIN Album a
    ON s.AlbumId = a.Id
  WHERE SongLength = (
    SELECT MAX(SongLength)
    FROM Song); 