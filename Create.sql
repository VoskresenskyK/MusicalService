CREATE TABLE IF NOT EXISTS Artists(
id serial PRIMARY KEY,
artists_name varchar(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums(
id serial PRIMARY KEY,
albums_name varchar(80) UNIQUE NOT NULL,
realise_year INT CHECK (realise_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS Style(
id serial PRIMARY KEY,
style_name varchar(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections(
id serial PRIMARY KEY,
collections_name varchar(80) UNIQUE NOT NULL,
realise_year INT CHECK (realise_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE IF NOT EXISTS Tracks(
id serial PRIMARY KEY,
tracks_name varchar(60) UNIQUE NOT NULL,
tracks_duration INT CHECK (tracks_duration > 0 AND tracks_duration <= 3600),
AlbumID INT NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS ArtistsAlbums(
id serial PRIMARY KEY,
ArtistID INT NOT NULL REFERENCES Artists(id),
AlbumID INT NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS StyleArtists(
id serial PRIMARY KEY,
StyleID INT NOT NULL REFERENCES Style(id),
ArtistID INT NOT NULL REFERENCES Artists(id)
);

CREATE TABLE IF NOT EXISTS CollectionsTracks(
CollectionID INT NOT NULL REFERENCES Collections(id),
TrackID INT NOT NULL REFERENCES Tracks(id),
CONSTRAINT pk PRIMARY KEY (CollectionID, TrackID)
);
