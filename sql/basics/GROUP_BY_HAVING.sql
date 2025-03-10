---  lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):
--- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions and WHERE condition can't be used after GROUP_BY statement.
--- order of evaluation of the statements:
--- 1. FROM -> 2. WHERE -> 3. GROUP BY -> 4. HAVING -> 5. SELECT -> 6. ORDERY BY
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;


select subject, min(marks) --- select subject, min(marks) as minmarks
from result
group by subject
having min(marks) > 50; --- having minmarks > 50;

-- query to find out teachers working in two different departements
--- teachers table: department_id, last_name, first_name, salary, start_date

| department_id | last_name  | first_name | salary  | start_date  |
|---------------|-------------|------------|--------|-------------|
| 101           | Smith       | John       | 50000   | 2021-06-15 |
| 102           | Smith       | John       | 50000   | 2021-06-15 |
| 101           | Johnson     | Alice      | 48000   | 2022-01-10 |
| 103           | Williams    | David      | 55000   | 2020-09-05 |
| 104           | Brown       | Sarah      | 52000   | 2021-12-12 |
| 104           | Brown       | Sarah      | 52000   | 2021-12-12 |
| 102           | Taylor      | Emily      | 47000   | 2022-03-20 |
| 101           | Taylor      | Emily      | 47000   | 2022-03-20 |
  
select last_name, count(distinct department_id) as departments
from teachers
group by last_name
having departments = 2;

result: 

| last_name  | departments |
|------------|-------------|
| Smith      | 2           |
| Taylor     | 2           |


  https://www.db-fiddle.com/f/xqJbGEPy62n5oF97rCQz2/0

CREATE TABLE tutors (
    tutor_id INT AUTO_INCREMENT PRIMARY KEY,
    tutor_name VARCHAR(50),
    capacity INT,
    subject VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO tutors (tutor_name, capacity, subject, salary) VALUES
('John', 35, 'Math', 50000),
('John', 40, 'Physics', 48000),
('David', 50, 'Biology', 60000),
('Alice', 60, 'Chemistry', 62000),
('Alice', 20, 'Physics', 45000),
('Alice', 10, 'Math', 40000),
('Robert', 25, 'History', 48000),
('Emily', 40, 'Computer Science', 70000),
('Emily', 20, 'Math', 50000),
('Sophia', 15, 'English', 35000),
('Sophia', 40, 'History', 52000);

select * from tutors;

--- simple aggregation

SELECT tutor_name, MIN(capacity) AS mincapacity
FROM tutors
GROUP BY tutor_name
HAVING mincapacity > 30;

--- with unnecessary CTE
WITH minmums AS(
    SELECT tutor_name, MIN(capacity) AS mincap
    FROM tutors
    GROUP BY tutor_name
    HAVING mincap > 30
)
SELECT m.tutor_name, m.mincap
FROM minmums m
JOIN tutors t ON m.tutor_name = t.tutor_name and m.mincap = t.capacity;

--- withh sub query

SELECT m.tutor_name, m.mincap
FROM (
    SELECT tutor_name, MIN(capacity) AS mincap
    FROM tutors
    GROUP BY tutor_name
    HAVING mincap > 30
) m
JOIN tutors t ON m.tutor_name = t.tutor_name AND t.capacity = m.mincap;

https://www.db-fiddle.com/f/xqJbGEPy62n5oF97rCQz2/0

  
--- cars table which, among others, has columns such as car_name, engine_type and max_speed.

--- Write a query that groups cars by engine type and finds the maximum speed for each type of engine

select engine_type, max(max_speed)
from cars
group by engine_type;


WITH max_speed_per_type AS (
    SELECT 
        engine_type, 
        MAX(max_speed) AS max_speed
    FROM cars
    GROUP BY engine_type
)
    
SELECT 
    c.name car_name,
    c.engine_type,
    c.max_speed
FROM cars c
JOIN max_speed_per_type mspt
ON c.engine_type = mspt.engine_type 
    AND c.max_speed = mspt.max_speed;

