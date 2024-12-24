MySQL string Functions


---

1. REVERSE(string)


```sql
SELECT REVERSE('Sweet home'); -- Result: 'emoh teewS'
```

---

2. MySQL: SUBSTR(string, start, length) /PostGreSQL: SUBSTRING(string FROM start FOR length)

1-indexed: Positions start from 1 (not 0).

Examples:

```sql
SELECT SUBSTR('Vivek', 1, 4); -- Result: 'Vive'
SELECT SUBSTR('Vivek', 1);    -- Result: 'Vivek' (entire string from position 1)
SELECT SUBSTRING('Sweet home', 7, 4); -- Result: 'home'
```

---

3. MySQL: `CHAR_LENGTH(string)` / Oracle DB: `LENGTH(string)`

returns the number of characters in the string.

```sql
SELECT CHAR_LENGTH('Vivek'); -- Result: 5
SELECT LENGTH('Sweet home'); -- Result: 10
```
---

4. REPLACE(string, search, replace)

```sql
SELECT REPLACE('Vivek', 'v', 's'); -- Result: 'sisek'
SELECT REPLACE('Swit home', 'i', 'ee'); -- Result: 'Sweet home'
```

---

5. CONCAT(string1, string2, ...)

```sql

SELECT CONCAT('Sweet', 'home'); -- Result: 'Sweethome'
SELECT CONCAT(SUBSTR('Vivek', 1, 1), '.', 'Vishal'); -- Result: 'V. Vishal'
```

---

6. String Manipulation in Queries

Example 1: Replace our with or in British English words:

```sql
SELECT REPLACE(word, 'our', 'or') AS word FROM dictionary;
```

Example 2: Generate American English analogues for British English words:

```sql
SELECT CONCAT(SUBSTRING(word, 1, CHAR_LENGTH(word) - 3), 'or') AS word
FROM dictionary;
```

---

7. Other Common String Functions**

| **Function**       | **Description**                                           | **Example**                                    |
|---------------------|-----------------------------------------------------------|------------------------------------------------|
| `TRIM()`           | Removes leading and trailing spaces.                      | `TRIM('  Vivek  ')` → `'Vivek'`               |
| `LEFT(string, n)`  | Extracts the first `n` characters.                        | `LEFT('Sweet home', 5)` → `'Sweet'`           |
| `RIGHT(string, n)` | Extracts the last `n` characters.                         | `RIGHT('Sweet home', 4)` → `'home'`           |
| `UPPER()`          | Converts the string to uppercase.                        | `UPPER('vivek')` → `'VIVEK'`                  |
| `LOWER()`          | Converts the string to lowercase.                        | `LOWER('VIVEK')` → `'vivek'`                  |
| `POSITION()`       | Finds the position of a substring in the string.          | `POSITION('home' IN 'Sweet home')` → `7`      |
| `LPAD()`           | Pads a string from the left.                              | `LPAD('home', 6, 'X')` → `'XXhome'`           |
| `RPAD()`           | Pads a string from the right.                             | `RPAD('home', 6, 'X')` → `'homeXX'`           |

---

Notes

Functions do not modify actual table data unless used in UPDATE queries.

These are useful for generating dynamic results or formatting data in queries.


---

References

[MySQL String Functions](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html)

[PostgreSQL String Functions](https://www.postgresql.org/docs/current/functions-string.html)


