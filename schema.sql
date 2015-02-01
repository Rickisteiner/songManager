CREATE TABLE songs (
  ID INTEGER PRIMARY KEY,
  title TEXT,
  album_id INTEGER references albums
);

CREATE TABLE albums (
  ID INTEGER PRIMARY KEY,
  name TEXT, 
  artist_id INTEGER references artists
);

CREATE TABLE artists (
  ID INTEGER PRIMARY KEY,
  name TEXT
);