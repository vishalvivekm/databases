```text
A database is a collection of data that is specifically organized for rapid search and retrieval processed by a computer.
- Structured data for fast retrieval by a computer

With databases we can:
- Store, retrieve and update data;
- Get metadata;
- Access a database remotely;
- Restrict accesses to data;
- Make concurrent updates;
- Recover to some point in time;
- Check the rules for data consistency automatically.

Databases provide schemas and metadata that allow for a quick search of the data needed.
A schema describes how the data is organized, whereas Metadata holds structural and statistical information.

```

<details><summary>diff between a database and a usual file</summary>
  
```text
file may be structured or not, but a database must have a specific structure.
e.g. a file with a to-do list, one can say that this file has some structure but from comp's perspective,
it's just a plain text file until a prgrm is written that manages the data in it.
```
</details>


DBMS ( DataBase Management System) - 
- a type of software that allows users to define, create and control data.
- It is a mediator between the user and the database, which means that users can work with it (database) through the interface of the DBMS. In addition, it can also help isolate data from the users.
- the DBMS can optimize queries and retrieve data from а database in an optimal way

> [!Note]
> - Usually, the information in databases is compressed and stored as binaries rather than plain text that computer can easily understand. <br>
> - DBMS allows comps to RW the data correctly. <br>
> - DBMS controls the data in a DB

- Almost all relational databases use the SQL standard, so same commands can be applied in different DBMSs.
### Features

    ACCESS to Data :-
    if stored locally, as the files grow in number, we won't be able to find information quickly. 
    Databases provide schemas and metadata that allow for a quick search of the data needed.


    Data consistency :-
    One of the best features of databases is their ability to keep and restore data correctly.

    Simultaneous access :- 
    databases isolate different users and can be configured to resolve conflicts between their updates.

    Backup and recovery
    DBMS allows tomake backups and then restore the data, whereas if a usual file becomes corrupted and cannot be opened, the data is gone forever. 

RDM - Relational Data Model 
Modern databases are designed on the basis of an abstract mathematical model called RDM i.e, Postgress, MySQL, Oracle etc.<br>
Terms :-
1. Relation -  2-D table that represents some entity or relationships
2. entity - an abstraction of some object ( like a class in oop) i.e, a student, a car or a building, each row in the table is an object or entities that has a particular set of props or attributes
3. A Relationship - defines how entities are inerconnected. 
e.g, each student studies in one of the groups, such a relationship in Relational DB is called many-to-one relationship.

A Relation consists of 1. Attributes 2. Tuples
1. Attribute - a column in the table: 
e.g, in reln to a stud, the attributes are : last name, first name, dob and stud number


2. Tuple - a row in a table, a collection of specific attribute values:
for a student reln with the attributes student number, last name, first name, dob, the tuple can be `2140124, Carl, Johnson, 01.01.2000`
A relation with its attributes can be briefly denoted as follows : 
Student ( student number, last name, first name, date of birth). 



| student number | last name | first name | dob
| -------------- | --------- | ---------- |  ---------- |
|  2140124	     | Johnson   | Carl       | 01.01.2003  |

> [!IMPORTANT]  
> Restrictions
> The following restrictions are imposed on the relations in the relational data model:
> 1. There cannot be two relations with the same name in a database.
> 2. All attributes within the same relation should have different names. i,e, columns with different names
> 3. There should only be one value in each cell.
> 4. The order of the rows and columns in the relations is not important.

#### Integrity
1. Entity Integrity
2. Referential Integrity

```
Entity Integrity :- means there can't be two identical tuples (rows) in table. we can't have two absolutely identical objs, i.e, there are no identical students, they are all distinct ( PK - student number)
- To maintain the integrity of an entity, the concept of a primary key (PK) is introduced.
```

```
Referential Integrity :-
- occurs when we have two connected relations.
- The relationship of the relation is provided using a foreign key (FK). a FK is an attribute of a relation ( subordinate/dependent) that points to the PK of another relation( main /master)
```

Identifying relationships exist when the primary key of the parent entity is included in the primary key of the child entity. On the other hand, a non-identifying relationship exists when the primary key of the parent entity is included in the child entity but not as part of the child entity’s primary key.
- stackoverflow: https://stackoverflow.com/questions/2814469/still-confused-about-identifying-vs-non-identifying-relationships/2814663#2814663

> SKIPPED SOME PART OF second theory to write down here will visit later and make notes then 1-1, 1-M, M-M

SQL (Structured Query Language) - a domain-specific-prgrming lang designed to handle data in tables. SQL is the standard data manipulation language used by data-driven companies around the world.

SQL -
- used to extract and update data STRUCTERED as tables, Excel spreadsheets etc,
- is intended for use with tables that have a particular structure:

> sql is a prgming lang with a large set of data processing features,it's Declarative - meaning a query written in SQL is a query that tells the system what shud be done or evaluated but doesn't specify how

```sql
SELECT * FROM Students;
```
 
the above query extracts all rows and columns form the table Students.
`*` symbol is used to select all the columns form the table
`;` is statement terminator. each sql statement ends with this else error. can be omitted only if we make one query at a time. but good practice - always put ; at the end of the query
- Keyword such as SELECT arent case sensitive in sql lang, often written in uppercase for more visibility

L in SQL: 
" select everything from the Student". SQL was designed to be as similar as possible to a natural language.
Its declarative nature helps to hide the operation's complexities, letting the user define what is required in a relatively straightforward way. The system then analyses the query, chooses the control flow, and executes it.
SQL was originally adopted as a standard by the `American National Standards Institute (ANSI)` in the 1980s

### Basic Data Types
SQL is a lang used for working with different types of data organized into a table.
usually, data values from the same column in a table have the same meaning and type. below is the Car table


| manufacture_year | color | horsepower | price  | electricity |
|------------------|-------|------------|--------|-------------|
| 2018             | Red   | 283        | 34.990 | TRUE        |
| 2052             | Blue  | 313        | 52.000 | False       |

	
SQL dbs usually require that each column in a database table has a name and a data type, which decides the values that be stored in the column and the operation.
Basic subset of data types: 
- INTEGER
- FLOAT
- DECIMAL
- VARCHAR
- BOOLEAN

INTEGER : numeric data type some range of mathematical integers ( -2147483648 to +2147483647) i,e, for counters etc.

Decimal:  numbers for body temp, SQL supports a special data type for such values -  DECIMAL(precision, scale) <br>
This type has two parameters : precision and scale <br>
Scale : is the count of digits to the right of the decimal point <br>
Precision : is the total count of digit in the number.

The FLOAT data type :
- Approximate numeric data type used for floating-point numbers. 
- With it we can store very large or very small numbers. 
- Also used for calculations that require fast processing. 
- has an optional parameter n that specifies the precision and storage size (from 1 to 53).

- REAL data type: FLOAT(24) ||  FLOAT of certain accuracy.

Text :- VARCHAR(n) - a string of symbols of varying length <= n can fit
a column with type VARCHAR(5) - Vivek, plum, can be inserted not GitHub as it exceeds the length restriction and system will either truncate them or generate an error if one tries to insert such long values

Boolean - TRUE or FALSE

an SQL query that defines a table friends with five columns: id of type INTEGER, name of type VARCHAR(20), birth_place_latitude of type REAL, year_income of type DECIMAL(20,2), and is_funny of type BOOLEAN.

```sql
CREATE TABLE friends (
    id INTEGER,
    name VARCHAR(20),
    birth_place_latitude REAL,
    year_income DECIMAL(20,2),
    is_funny BOOLEAN
);
```

the pattern:
```text
CREATE TABLE table_name (
    column_name_1 column_t_1,
    ..., 
    column_name_n column_t_n
);
```

> later: type casting, compound types, special types for numeric data, text, timestamps, and so on

Literals :- constant values called literals
1. String literals - 'Postgres' or "Meshery" or "Lee's birthday" or 'Lee"s birthday'. literals are enclosed in single or double quotes.

2. Numeric literals: +ve or -ve numbers specified as integer or decimal (2.3, +34.45, -103.0)  or real values in exponential notation ( 0.4e3, -4.0e-5)
> ( +ve sign is assumed by default if not specified)

- may be INTEGER, REAL or DECIMAL ( type is automatically defined by data management system based on the context)  
-  e.g, specifying a numeric value without a decimal point, which fits the INTEGER range of values, the system will treat it as INTEGER, and otherwise as DECIMAL. 
- Numeric values specified in exponential notation are treated as REAL data.

> type of a literal can be directly specified using the CAST (value AS type) function.
```sql
SELECT
    CAST(1 AS DECIMAL(20,3));
# here the numeric value 1 is interpreted as DECIMAL (20,3) and 1.000 as result of query. 
# This is because 3 as the second argument says that 3 decimal places will be outputed, even if they are zeros.
```

Boolean Literals - logic truth values, TRUE and FALSE, no matter how they're specified these values are identical boolean literals

Hello, World! 
The below sql code ( actually, a single query) implements it 
```sql
SELECT 'Hello, World!' ;
# query evaluation result : Hello, World!
``` 
the ^^  query declaratively states that we wanna select this string as a result. <br>
Three parts :- 
- keyword `SELECT` ( case insensitive)
- the literal to be received
- a semicolon `;` that defines the end of the query

```sql
SELECT literal;
# a SQL query that extracts any literal( maybe string, numeric or boolean looks as above's, literal maybe replaced with any correctly specified constant we want)
```

### Arithmatic Expression 

with SQL, we can handle arithmetic expressions. 
SQL allows to work with operators such as `+`, `-`, `*`, `/`, `%`.

### Precedence

```sql 
# common rule of operator precedence (below in descending ordr).
# SQL also supports brackets to make an operator take priority over any other operation.
# Tip: (use brackets even when not needed for code readability)
# -2+2*2-2/2 and (-2)+(2*2)-(2/2). 2nd is much easier to read!

# operators
# -
# unary minus that changes the sign of a value;
             SELECT -2;
               > -2

# *
# multiplication;
    SELECT 20*15;
    > 300

# /
# division;
    SELECT 3/5;
    > 0.60
# %
# modulo that returns the remainder of integer division;
    SELECT 18%4;
    > 2

# +
# addition
    SELECT 30+234;
    > 264
# -
# subtraction
    SELECT 3-5;
    > -2
```

not only a literal but even an arithmetic expression can also be selected in SQL
```sql
 SELECT expression ;
```
e.g, the code below evaluates the expression (2+2)*15:
```sql
 SELECT (2+2)*15;
> 60
#   The query evaluation result is 60.
```

Basic CREATE and DROP statement

- To create a new database:
           ```CREATE DATABASE database_name```; 
- to drop the database:
            ```DROP DATABASE database_name;```
            (statement deletes all the tables inside the database)

- To create a new table:
  ```sql
  CREATE TABLE table_name (
  column_1 column_1_type,
  column_2 column_2_type,
  ...., 
  column_n column_n_type
  );

  ```
- To delete a table:
  ```sql
  DROP TABLE table_name;
  # statement deletes the table itself and all information stored in it.
  ```

  ### Creating Database
( info about uni studs in a new db) 
```sql
CREATE DATABASE students;
# this sql query creates the database named students
```

let's create some tables to organized the data.
```sql
# creating a new table
CREATE TABLE statement;
```
Let's keep working with our students database and create a table students_info that will contain four columns: student_id, name, surname and age.
The column student_id, will hold the unique student identifier of the INT type. The columns name and surname will have VARCHAR(30) data. The age column will hold INT values.
```sql
CREATE TABLE students_info ( 
    student_id INT, 
    name VARCHAR(30), 
    surname VARCHAR(30), 
    age INT
);
```

As a result, we have an empty table students_info:

| student_id | name | surname | age |
|------------|------|---------|-----|


- The following SQL query drops the existing database students:
```sql
DROP DATABASE students; 
# dropping the database,  loses all the tables stored in it and database itself. 
```

- for deleting a specific table use DELETE TABLE statement
```sql
# delete students_info table
DROP TABLE students_info; 
```

> [!IMPORTANT]
>  While the DROP DATABASE statement deletes all the tables inside the database, DROP TABLE statement deletes the table itself and all information stored in it.

BASIC SELECT STATEMENT
SELECT 'Hello, World!'; and SELECT 2.3*4+5; // basic SELECT stmnts

TUPLE -
```sql
SELECT 'Alice', 170, 170*0.393701;
#  this query selects a string literal, a numeric literla and an arithmetic expresn
```

Such a set of values (or attributes  / fields) is called a tuple (record / row). where we are specifying >= 1 value seperated by `,`.

Alias 
in a query, for each attribute of a tuple we can specify a name ( alias) by using the keyword AS followed by a name for the value.
in case alias - several words/a sql keyword then put them in `" "`
example ;-

```sql
SELECT 
  'Alice' AS name, 
  170 AS height_in_centimeters, 
  170*0.393701 AS "height in inches"
;
result - a tuple with three attributes

# | name | height_in_centimeters | height in inches |
# |------|------------------------|------------------|
# | Alice | 170                   | 66.92917        |

```
SQL is designed to process data organized in tables. Actually, the result of the example query is also a table with column names specified in aliases and consisting of only one row.

> [!Note] 
> sql - case insensitive but use uppercase and indentation for code readability
```sql
SELECT 'Bob' AS name, 160 AS "height in centimeters", 160*0.393701 AS "height in inches";

SELECT 
  'Bob' AS "name", 
  160 AS "height in centimeters", 
  160*0.393701 AS "height in inches"
;

SELECT 
  'Bob'        AS "name", 
  160          AS "height in centimeters", 
  160*0.393701 AS "height in inches"
;
```


third one = easily can see no of attr, values and names
second one - intermediate in terms of code readability but easier to edit than third one. can choose the code formatting style of team

- Syntax of basic SELECT statement
```sql
SELECT val1 [AS name1], ..., valN [AS nameN];
/* SELECT keyword, a list of values to extract with optinal aliases for them, a semicolon to indicate the end of the statement */
```

```sql
concat('ba', 'nana'):  'banana'
reverse('banana'): 'ananab'
substr('banana', 3, 2) : 'na'
char_length('banana') : 6
replace('banana', 'n', 'l') : balala
```


### ALTER: 

- to add a new column to the existing table: 

```sql
ALTER TABLE table_name
ADD COLUMN column_name DATATYPE; 
```

- to delete a column from the table:
```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

- to change the column type:

```sql
ALTER TABLE table_name 
MODIFY COLUMN column_name NEWDATATYPE;
```

- to change the column name (and, possibly, datatype), use the following template:

```sql
ALTER TABLE table_name
CHANGE old_column_name new_column_name NEWDATATYPE; 
```

The syntax may vary in different SQL dialects.

<details>
<summary>
</summary>

Resources : SQLite ALTER TABLE syntax diagram and specifications:
- https://sqlite.org/lang_altertable.html <br>
- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_position

To practice sql
- https://sqlbolt.com/
- https://pgexercises.com/
- https://www.sql-ex.ru/?Lang=1
- https://sqlzoo.net/
- https://www.youtube.com/playlist?list=PLSE8ODhjZXjbohkNBWQs_otTrBTrjyohi


</details>
