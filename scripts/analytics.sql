-- Top 3 Movies by Rating
SELECT title, rating 
FROM movies 
JOIN ratings ON movies.id = ratings.movie_id 
ORDER BY rating DESC 
LIMIT 3;

-- Movies by Genre
SELECT genres.name AS genre, COUNT(movies.id) AS movie_count
FROM genres
LEFT JOIN movies ON genres.id = movies.genre_id
GROUP BY genres.name;

-- Average Rating by Genre
SELECT genres.name AS genre, AVG(ratings.rating) AS avg_rating
FROM genres
JOIN movies ON genres.id = movies.genre_id
JOIN ratings ON movies.id = ratings.movie_id
GROUP BY genres.name;
