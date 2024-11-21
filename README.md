# Movie Database Analytics with DuckDB

This project demonstrates how to use DuckDB with SQL for building a movie analytics database. The database includes movies, genres, and ratings, allowing users to perform various analytics queries.

## Features
- SQL-based database management using DuckDB.
- Lightweight and efficient design, perfect for local analytics.

## Project Structure
movie-db-duckdb/ <br>
├── data/ :CSV files for sample data <br>
├── scripts/ :SQL scripts for creating tables and running queries <br>
├── movie_db.duckdb :DuckDB database file (generated) <br>
├── README.md :Project documentation <br>
├── requirements.txt :List of dependencies <br>

## Setup Instructions
1. Install DuckDB:<br>
   ```pip install duckdb```

2. Create and populate the database:<br>
``` duckdb movie_db.duckdb``` <br>
```.read scripts/create_tables.sql``` <br>
```.read scripts/insert_data.sql ```

3. Run Analytics Queries:<br>
```.read scripts/analytics.sql```

## Sample Queries
**Top 3 Movies by Rating:** <br>
```SELECT title, rating FROM movies ```<br>
```JOIN ratings ON movies.id = ratings.movie_id``` <br>
```ORDER BY rating DESC LIMIT 3;```

**Movies by Genre:**<br>
```SELECT genres.name AS genre,```<br> 
```COUNT(movies.id) AS movie_count```<br>
```FROM genres LEFT JOIN movies ON genres.id = movies.genre_id```<br>
```GROUP BY genres.name;```
