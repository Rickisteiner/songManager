CREATE TABLE song (
  ID INTEGER PRIMARY KEY,
  title TEXT,
  album_id INTEGER references album
);

CREATE TABLE album (
  ID INTEGER PRIMARY KEY,
  name TEXT, 
  artist_id INTEGER references artist
);

CREATE TABLE artist (
  ID INTEGER PRIMARY KEY,
  name TEXT
);