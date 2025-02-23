--- https://sqlbolt.com/lesson/select_queries_with_joins

-- syntax:
SELECT a.column_1, b.column2
FROM table_1 AS a
INNER JOIN table_2 AS b
    ON a.id = b.id;
-- aliasing optional but good practice, and helps if tables have same named attributes

-- 1st task: 
-- my soln: 
SELECT m.Title, b.Domestic_sales, b.International_sales 
FROM Movies as m
  INNER JOIN Boxoffice as b
    ON m.Id = b.Movie_id
ORDER BY m.Title;


-- soln: 
SELECT title, domestic_sales, international_sales 
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- alternatively
/*
SELECT m.Title, b.Domestic_sales, b.International_sales
FROM Movies as m, Boxoffice as b
    WHERE m.Id = b.Movie_id

*/

-- 2nd tast: 
-- my soln:
SELECT Title, Domestic_sales, International_sales
FROM Movies
INNER JOIN Boxoffice
ON Movies.Id = Boxoffice.Movie_Id and Boxoffice.International_sales > Boxoffice.Domestic_sales;

-- soln
SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- https://github.com/vishalvivekm/databases/blob/main/sql/INNER_JOIN.md


-- 3rd task: 

SELECT title, rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
order by rating desc;

