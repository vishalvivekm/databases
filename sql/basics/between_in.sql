--- BETWEEN - includes range
/*
| Name      | Distance (km) |
|-----------|---------------|
| Alice     | 10            |
| Bob       | 12            |
| Charlie   | 15            |
| David     | 20            |
| Eve       | 25            |
| Frank     | 13            |
| Grace     | 17            |



*/

SELECT Name
FROM Friend
WHERE Distance BETWEEN 11 AND 15;

--- Bob, Charile, Frank in a column

--- WHERE Distance NOT BETWEEN 11 AND 15;


SELECT Name
FROM Friend
WHERE Distance IN (10, 15,20);

--- Alice, Charlie, David


/*
https://learnsql.com/blog/sql-where-guide/ 
https://www.sqltutorial.org/sql-between/
*/
