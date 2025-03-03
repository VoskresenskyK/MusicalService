-- INSERT
-- Artists
INSERT INTO Artists(artists_name) VALUES
('Kanye West'),
('Ty Dolla Sign'),
('Chris Martin'),
('Iggy Pop'),
('Тима Белорусских'),
('Бьянка');

-- Albums
INSERT INTO Albums VALUES
(1, 'Vultures 2', 2024),
(2, 'Graduation', 2007),
(3, 'Jesus Is King', 2019),
(4, 'Donda', 2021),
(5, 'Твой первый диск — моя кассета', 2019),
(6, 'Волосы', 2019);

-- Style
INSERT INTO Style(style_name) VALUES
('Hip-Hop'),
('Alternative rock'),
('Pop');

-- Collections
INSERT INTO Collections(collections_name, realise_year) VALUES
('Remixes 2025', 2025),
('HAШE РAДИO. ЛУЧШEE 2020 OT DON МUSIC', 2020),
('Party Fun 2020', 2019),
('NRJ Hit Music Only 2020', 2019);

-- Tracks
INSERT INTO Tracks(tracks_name, tracks_duration, AlbumID) VALUES
('Slide', 197, 1),
('Time Moving Slow', 160, 1),
('Field Trip', 167, 1),
('Fried', 179, 1),
('Isabella', 9, 1),
('Promotion', 159, 1),
('Husband', 138, 1),
('Lifestyle', 331, 1),
('Forever', 87, 1),
('Bomb', 152, 1),
('River', 247, 1),
('530', 290, 1),
('Dead', 263, 1),
('Forever Rolling', 197, 1),
('Sky City', 231, 1),
('My Soul', 225, 1),
('Carnival', 225, 1),
('Stronger', 311, 2),
('Homecoming', 203, 2),
('Every Hour', 112, 3),
('Selah', 165, 3),
('Follow God', 165, 3),
('Closed on Sunday', 152, 3),
('On God', 136, 3),
('Everything We Need', 116, 3),
('Water', 168, 3),
('God Is', 203, 3),
('Hands On', 203, 3),
('Use This Gospel', 214, 3),
('Jesus Is Lord', 49, 3),
('Я больше не напишу', 191, 5),
('Витаминка', 176, 5),
('Возвращаться уже поздно', 199, 5),
('Цветочный сад', 181, 5),
('Руферы', 191, 5),
('Мальчик бабл-гам', 180, 5),
('Песня-SOS', 215, 5),
('Волосы', 194, 6),
('Текила бум', 185, 6),
('Василёк', 164, 6),
('Кто тут мама', 170, 6),
('Дождь на ресницах', 138, 6),
('Наши тела', 223, 6),
('Космос', 207, 6),
('Травой', 180, 6),
('Почему я', 201, 6),
('Мой пацан', 194, 6),
('Полный п****ц', 194, 6);

-- ArtistsAlbums
INSERT INTO ArtistsAlbums(ArtistID, AlbumID) VALUES
('1', '1'),
('1', '2'),
('2', '1'),
('1', '3'),
('1', '4'),
('5', '5'),
('6', '6');

-- StyleArtists
INSERT INTO StyleArtists(StyleID, ArtistID) VALUES
('1', '1'),
('1', '2'),
('2', '3'),
('2', '4'),
('1', '5'),
('3', '5'),
('2', '6');

-- CollectionsTracks
INSERT INTO CollectionsTracks(CollectionID, TrackID) VALUES
('1', '17');
