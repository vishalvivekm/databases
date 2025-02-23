-- https://sqlbolt.com/lesson/select_queries_with_nulls
--  table buildings: building_name	capacity
-- table employees: role	name	building	years_employed

-- 2nd task: Find the names of the buildings that hold no employees

-- using exists
select building_name from buildings b
where not exists (
select building from employees
where b.building_name = building
);

-- using left join

select building_name 
from buildings
left join employees
on building_name = building
where building is null;
