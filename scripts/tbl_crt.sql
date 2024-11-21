CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title VARCHAR NOT NULL,
    release_year INTEGER,
    genre_id INTEGER,
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE genres (
    id INTEGER PRIMARY KEY,
    name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE ratings (
    id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    rating FLOAT,
    rating_count INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);
