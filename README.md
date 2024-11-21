# Movie Database Analytics with DuckDB

This project demonstrates how to use DuckDB with SQL for building a movie analytics database. The database includes movies, genres, and ratings, allowing users to perform various analytics queries.

## Features
- SQL-based database management using DuckDB.
- Analytics queries for insights, such as top-rated movies and genre statistics.
- Lightweight and efficient design, perfect for local analytics.

## Project Structure
movie-db-duckdb/ <br>
├── data/ :CSV files for sample data <br>
├── scripts/ :SQL scripts for creating tables and running queries <br>
├── movie_db.duckdb :DuckDB database file (generated) <br>
├── README.md :Project documentation <br>
├── LICENSE :License information <br>
├── requirements.txt :List of dependencies <br>

## Setup Instructions
1. Install DuckDB:
   ```pip install duckdb```

2. Create and populate the database:
``` duckdb movie_db.duckdb `
.read scripts/create_tables.sql
.read scripts/insert_data.sql ```

3. Run Analytics Queries:
```.read scripts/analytics.sql```

## Sample Queries
**Top 3 Movies by Rating:**
```SELECT title, rating FROM movies `
JOIN ratings ON movies.id = ratings.movie_id 
ORDER BY rating DESC LIMIT 3;```

**Movies by Genre:**
```SELECT genres.name AS genre, COUNT(movies.id) AS movie_count`
FROM genres
LEFT JOIN movies ON genres.id = movies.genre_id
GROUP BY genres.name;```

## License
This project is licensed under the MIT License. See LICENSE for more details.
