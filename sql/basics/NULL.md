NULL in sql
https://www.w3schools.com/sql/sql_null_values.asp

- used to denote the data value is undefined or unknown
- NOT NULL constrain on column 
- IS NULL , NOT NULL to check if a value is null or not null

- Nothing equal Null

result of each of the following comparisons is UNKNOWN:
```sql
    NULL = 1

    NULL <> 1

    NULL > 1

    NULL = '1'

    NULL = NULL

```
    not all sql dialects support UNKNOWN
    
    
    SELECT population + NULL FROM city;
    results of this: every row will be NULL
    
which of the expressions result in UNKNOWN
SELECT 1 = NULL; -- results in UNKNOWN
SELECT (NULL = 'acb') AND TRUE; -- results in UNKNOWN
SELECT 'ABC' + NULL IS NULL; // no, using IS: correct way to check if null
SELECT NULL = NULL; -- results in UNKNOWN

which of the expressions results in FALSE

SELECT NULL = NULL; // UNKNOWN, in db-fiddle results in null
SELECT NULL IS NOT NULL; // FALSE, 0
SELECT NULL IS NULL; // TRUE, 1
SELECT 0 IS NULL; // FALSE, 0

select NULL + 5; // null
