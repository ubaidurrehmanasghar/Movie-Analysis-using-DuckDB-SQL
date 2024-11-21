-- Insert Genres
COPY genres FROM 'data/genres.csv' (AUTO_DETECT TRUE);

-- Insert Movies
INSERT INTO movies (id, title, release_year, genre_id) VALUES
(1, 'Inception', 2010, 5),
(2, 'The Dark Knight', 2008, 1),
(3, 'Parasite', 2019, 3),
(4, 'Get Out', 2017, 4),
(5, 'Superbad', 2007, 2);

-- Insert Ratings
INSERT INTO ratings (id, movie_id, rating, rating_count) VALUES
(1, 1, 8.8, 2000000),
(2, 2, 9.0, 2300000),
(3, 3, 8.6, 1500000),
(4, 4, 7.7, 1200000),
(5, 5, 7.6, 1000000);
