### SQL CASE statement
- used to create conditional logic in SQL queries.
- evaluates conditions and returns values based on the first matching condition.

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE default_result
END
```

- WHEN: Specifies the condition to evaluate.

- THEN: The result to return if the condition is true.

- ELSE: (Optional) The default result if none of the conditions match.

- END: Marks the end of the CASE statement.



---

Key Points

1. CASE Without ELSE:

If no ELSE is specified and no conditions match, the CASE returns NULL.



2. First Match Rule:

If multiple conditions are true, the CASE returns the result of the first matching condition.


---

1. Simple CASE

Add a derived column to indicate if a person is an adult or a minor:

```sql
SELECT 
    name, 
    CASE
        WHEN age >= 18 THEN 'adult'
        ELSE 'minor'
    END AS age_status
FROM people;
```

Output: Includes a new field age_status with adult if age >= 18, otherwise minor.


2. CASE with Selector

Match values in a column (city) and return a corresponding result:

```sql
SELECT 
    customer_id,
    CASE city
        WHEN 'New York' THEN 'USA'
        WHEN 'Moscow' THEN 'Russia'
        ELSE 'Unknown'
    END AS country
FROM cities;
```

city is the column to evaluate, and country contains the result.


3. CASE Without ELSE

If no ELSE is provided and no conditions are met, the result is NULL:

```sql
SELECT 
    name, 
    CASE 
        WHEN age > 30 THEN 'Old'
        WHEN age > 18 THEN 'Adult'
    END AS age_category
FROM people;
```

Records with age <= 18 will have NULL in the age_category column.


4. First Match Behavior

If multiple conditions are true, the first match is returned:

```sql
SELECT 
    CASE
        WHEN TRUE THEN 'False'
        WHEN FALSE THEN 'True'
    END AS result;
```

The result will always be 'False' since TRUE is the first condition.


- conditional logic for derived columns.

- simplifying complex IF conditions.

- handling multi-case data transformations.
The SQL  function is a standard SQL function that evaluates a list of expressions in order and returns the first non- value encountered. If all expressions in the list are , the function returns . [1, 2, 3]  
Syntax 
The basic syntax is the same across most major SQL database management systems (DBMS) like MySQL, PostgreSQL, SQL Server, and Oracle. [2, 4]  
The arguments (, , etc.) can be column names, variables, or literal values, and they must all be of the same or compatible data types. [5, 6]  
Key Use Cases and Examples 
The primary use of  is to handle  values gracefully, providing default values or consolidating data from multiple potential sources. 

• Providing a Default Value: This is the most common use case, replacing a potential  result with a specific alternative, such as 'N/A' or 0. 

	• Example: Replace a potentially  phone number with the string 'N/A'. 
SELECT name, COALESCE(phone_number, 'N/A') AS phone_number
FROM customers;

	• Example: Use a default value of 0 in calculations to avoid the entire calculation resulting in . 
SELECT price * COALESCE(quantity, 0) AS order_total
FROM order_details;

• Combining Data from Multiple Columns: It is useful for selecting the first available piece of information from several columns. 

	• Example: Prioritize the , then the , and finally the  as the contact number. 
SELECT first_name, COALESCE(home_phone, work_phone, cell_phone) AS primary_contact
FROM employees;

• String Concatenation: It can prevent a whole concatenated string from becoming  if one part is missing, by replacing  with an empty string (). 

	• Example: Build a full name, even if the middle name is `NULL`
    SELECT COALESCE(first_name, '') + ' ' + COALESCE(middle_name, '') + ' ' + COALESCE(last_name, '') AS full_name
FROM personnel;

