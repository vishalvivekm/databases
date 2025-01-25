### MySQL variables

- user defined
- local
- system

#### user defined

- prefixed with `@`
- session-specific
- not case-sensitive

```sql
SET @variable_name = <value>;
SELECT @variable_name; --- <value>
--- or,
SELECT @variable_name := <value>;
--- SELECT @variable_name; --- <value>

--- variables names aren't case sensitive here.

--- if using aggregate functions, use SELECT with :=

SELECT @highest_marks := MAX(marks) from students;

SELECT * FROM students
where marks = @highest_marks;

```

#### Local variables

- uses `DECLARE` keyword (within stored programs)
- only available within stored programs; stored procedures, functions, triggers.
- strongly typed ( must specify a type)
- takes Default value, null otherwise
- no `@` prefix

```sql
DECLARE a INT;
DECLARE b INT;
DECLARE c INT DEFAULT 30;

SET a = 10;
SET b = 5;

SELECT a + b + c;
/* 45 */

--- must be declared before used.
```

```sql
--- SET command,assignment operators, =, :=
---  is used for variable assignments in standalone SQL queries.
```

#### system variables
- mysql server variables
- to see all system variables : `SHOW VARIABLES` SHOW [GLOBAL | SESSION] VARIABLES;
- to see system variable, use `@@` prefix: `SELECT @@hostname;`

```sql
-- show all system variables
SHOW VARIABLES;

-- show global variables
SHOW GLOBAL VARIABLES;

-- show session variables
SHOW SESSION VARIABLES;

-- retrieve the hostname system variable
SELECT @@hostname;

-- change a system variable (requires appropriate privileges)
SET GLOBAL max_connections = 200; -- Change max connections globally

```

#### Summary

- user-defined variables: use `@` and assign with `SET` or `:=` in `SELECT`.
- local variables: use `DECLARE` within stored programs and assign with `SET` or `:=`.
- system variables: Use `SHOW VARIABLES` or `SELECT @@variable_name` to access, and `SET` to modify.

  <details><summary>keywords to declare a variable in mysql: </summary>
    
  `SET`, `SELECT`, `DECLARE`

  </details>


  ```sql
  DECLARE counter INT DEFAULT 0;
  ```
