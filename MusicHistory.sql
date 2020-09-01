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


  /* 8 */


  /* 9 */


  /* 10 */


  /* 11 */


  /* 12 */


  /* 13 */


  /* 14 */


  /* 15 */


  /* 16 */


  /* 17 */