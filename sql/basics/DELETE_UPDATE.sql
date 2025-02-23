-- to delete all row w/o deleting the table
DELETE FROM table_name 


-- to delete selected rows
DELETE FROM table_name 
WHERE logical_expression;

-- https://sqlbolt.com/lesson/deleting_rows

--Table: movies

-- id	title	                director	       year	 length_minutes
-- 7	Cars	                John Lasseter	       2006	 117
-- 8	Ratatouille	          Brad Bird	       2007	 115
-- 10	Up	                  Pete Docter	       2009	 101
-- 11	Toy Story 3	          Lee Unkrich	       2010	 103
-- 12	Cars 2	              John Lasseter	       2011	 120
-- 13	Brave	                Brenda Chapman	       2012	 102
-- 14	Monsters University	  Dan Scanlon	       2013	 110


DELETE FROM movies
where director = "John Lasseter";


-- UPDATE


UPDATE table_name
SET column1 = value1, -- or, a valid sql expression like salary = salary + 100
    column2 = value2,
    ...
    columnN = valueN
WHERE condition; -- necessary to update only selected rows fulfilling this condition. omitting Where clause, we update specified columns in all rows

-- change department_id and lecture room for all cs students: 
UPDATE cs_students
SET department_id = 34,
    lecture_room = 'LC-201';

-- let's give a 10% hike to all employees in Engineering and with salary below 50000:
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'Engineering' AND salary < 50000;


-- Tip: One helpful tip is to always write the constraint first and test it in a SELECT query to make sure you are updating the right rows, and only then writing the column/value pairs to update.

-- https://sqlbolt.com/lesson/updating_rows

UPDATE movies
SET title = "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;
