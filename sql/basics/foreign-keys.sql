--- https://dev.mysql.com/doc/refman/9.0/en/create-table-foreign-keys.html
--- FOREIGN KEY constraints can reference tables that are within the same database.

--- to know the foreign key name in table friends (mysql):
SHOW CREATE TABLE students;

--- fk is used to link two tables together
--- child table is the table containing the foreign key
--- below, departments: parent table, references table
---        students: child table

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name varchar(20)
);
CREATE TABLE students (
  id INT PRIMARY KEY,
  name varchar(20),
  department_id int
  --- CONSTRAINT fk_department FOREIGN KEY (department_id)
  --- REFERENCES departments(id)
  --- ON DELETE SET NULL
  --- ON UPDATE CASCADE

  --- unnamed fk
  --- FOREIGN KEY (department_id) references department(department_id)

  );

--- add a foreign key to an existing table: 
ALTER TABLE students
ADD CONSTRAINT fk_department FOREIGN KEY(department_id)
REFERENCES departments(id)
ON DELETE SET NULL
ON UPDATE CASCADE;


--- Referential actions govern what should happen we change data using ON DELETE and ON UPDATE actions:

CASCADE
SET NULL
RESTRICT
SET DEFAULT
NO ACTION --- same as RESTRICT in mysql

--- drop a foreign key: 
ALTER TABLE students
DROP FOREIGN KEY fk_department;


