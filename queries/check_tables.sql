-- read both tables
SELECT * FROM movies;
SELECT * FROM ratings;

--count number of rows by calling count function on any column
SELECT COUNT(imdb_id) as "Total Rows in Movie Table" FROM movies;

SELECT COUNT(rating) as "Total Rows in Rating Table" FROM ratings;