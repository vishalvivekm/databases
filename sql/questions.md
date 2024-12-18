
1. https://leetcode.com/problems/recyclable-and-low-fat-products/

```sql
# Write your MySQL query statement below
select product_id
from Products
where recyclable = 'Y' and low_fats = 'Y';
```

2. https://leetcode.com/problems/find-customer-referee/

```sql
# Write your MySQL query statement below
select name
from Customer
where not referee_id <=> 2;
```

<details><summary>about sql comparision</summary>

```md
In SQL:

    Any comparison with NULL results in UNKNOWN (neither TRUE nor FALSE).
    WHERE filters only rows where the condition evaluates to TRUE.

For example: If the Customer table contains:

### Customer Table
| name     | referee_id |
|----------|------------|
| Alice    | 1          |
| Bob      | 2          |
| Charlie  | NULL       |
| Dave     | 3          |

### Query: SELECT name FROM Customer WHERE referee_id != 2
#### Result:
| name     |
|----------|
| Alice    |
| Dave     |

### Query: SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL
#### Result:
| name     |
|----------|
| Alice    |
| Charlie  |
| Dave     |

    Alice (1) → Included (1 != 2 is TRUE)
    Bob (2) → Excluded (2 != 2 is FALSE)
    Charlie (NULL) → Excluded (NULL != 2 is UNKNOWN)
    Dave (3) → Included (3 != 2 is TRUE)
```

</details>

3. https://lnkd.in/e8jTv8fc
4. https://lnkd.in/eunpSKjq
5. https://lnkd.in/eCddeKz7
6. https://lnkd.in/e99jas9E
7. https://lnkd.in/eB7GjBZa
8. https://lnkd.in/eJhvSYEy
9. https://lnkd.in/eGwSCiVu
10. https://lnkd.in/etFZhuuB
11. https://lnkd.in/ePzxU_dS
12. https://lnkd.in/ezhgpyeA
13. https://lnkd.in/eMdqjiKa
14. https://lnkd.in/eH8td2vB
15. https://lnkd.in/eJ-22bi3
16. https://lnkd.in/eTGhJDGA
17. https://lnkd.in/eFySJZ5a
18. https://lnkd.in/ezM4YEwA
19. https://lnkd.in/emvjvwbJ
20. https://lnkd.in/esd_7-H6
21. https://lnkd.in/e2jWFbqn
22. https://lnkd.in/er8NJCTi
23. https://lnkd.in/eV7STUBD
24. https://lnkd.in/ecgVJXyk
25. https://lnkd.in/ek3ix8tf
26. https://lnkd.in/eWc5AqEw
27. https://lnkd.in/eE4VrhKR
28. https://lnkd.in/ezAwWRiK
29. https://lnkd.in/eCC9DTJd
30. https://lnkd.in/eMY8vJcV
31. https://lnkd.in/erCC5crj
32. https://lnkd.in/ecjMiKz7
33. https://lnkd.in/ezURYT2H
34. https://lnkd.in/ehxHHRXQ
35. https://lnkd.in/eWgazb84
36. https://lnkd.in/eN5Qg2aQ
37. https://lnkd.in/eq858hAD
38. https://lnkd.in/ePpgjKTN
39. https://lnkd.in/eaZ9D7v4
40. https://lnkd.in/etfuR-2H
41. https://lnkd.in/e2rg2Tnq
42. https://lnkd.in/efksGXtc
43. https://lnkd.in/eegHKc4n
44. https://lnkd.in/e_EVGp5x
45. https://lnkd.in/ehtm3-he
46. https://lnkd.in/ezXrQ7fA
47. https://lnkd.in/e847hrCB
48. https://lnkd.in/eXgcaaAC
49. https://lnkd.in/eSzEGbqc
50. https://lnkd.in/eHFZC7Zz

Answers: https://lnkd.in/gP3zhzaM

