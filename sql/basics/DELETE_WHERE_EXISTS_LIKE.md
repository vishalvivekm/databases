

### Delete

to delete all the rows without deleting the table:
```sql
DELETE FROM table_name; 
```

delete only selected rows:

```sql
DELETE FROM table_name 
WHERE logical_expression;
```

https://sqlbolt.com/lesson/deleting_rows



The `SELECT COUNT(*)` statement:  used to count the number of rows / records in a specific table.

<details><summary>return true w/o using TRUE literal: </summary>r
  
```sql
SELECT
    1                                                                               AND
    1 = 1                                                                           OR
    NOT FALSE                                                                       AND
    (6000 + 969)  = 6969                                                            OR
    (500 - 80)    = 420                                                             AND
    REVERSE('URT') = 'TRU'                                                          OR
    NOT CONCAT('FAL', 'SE') = 'TRU'                                                 AND
    SUBSTRING('FALSETRUFALSE', 6, 3) = 'TRU'                                        OR
    CHAR_LENGTH('T') + CHAR_LENGTH('R') + CHAR_LENGTH('U') + CHAR_LENGTH('E') = 4   AND
    REPLACE('The End? FALSE! Bye :D', 'FALSE', 'TRU') = 'The End? TRU! Bye :D';
```


</details>
WHERE

https://learnsql.com/blog/sql-where-guide/

Exists
The EXISTS operator is used to test for the existence of any rows in a subquery. It returns TRUE if the subquery returns at least one row, and FALSE otherwise.
using the EXISTS operator to select distinct friends who are interested in movies and live within a distance of less than 5 units.
          


| friend  | interest    | distance |
|---------|-------------|----------|
| Alice   | movies      | 3        |
| Bob     | music       | 6        |
| Charlie | movies      | 2        |
| Alice   | cooking     | 4        |
| Dave    | movies      | 7        |

```sql
SELECT DISTINCT
    friend
FROM
    friends AS close_friends
WHERE
    interest = 'movies'
    AND EXISTS (
        SELECT friend --- SELECT 1
        FROM friends
        WHERE
            distance < 5
            AND friend = close_friends.friend
    );
```

---

### Result

| friend  |
|---------|
| Alice   |
| Charlie |


The negated EXISTS operator returns FALSE if the subquery returns any records and TRUE otherwise. 
query to get the friends who are interested in movies but don't live within a distance of 5 units:


```sql
SELECT DISTINCT
    friend
FROM
    friends AS close_friends
WHERE
    interest = 'movies'
    AND NOT EXISTS (
        SELECT friend --- SELECT 1
        FROM friends
        WHERE
            distance < 5
            AND friend = close_friends.friend
    );
```
### Result
| friend  |
|---------|
| Dave    |
    
## LIKE
- `%` any number of characters
- `_` exactly one character

```sql
SELECT
    friend
FROM
    friends
WHERE
    interest NOT LIKE '%i%';
```

## ANY

## IS NULL

## IS DISTINCT FROM

> [!Note]
> NULL = NULL => UNKNOWN <br>
> NULL IS NOT DISTINCT FROM NULL => TRUE

IS DISTINCT FROM
    
