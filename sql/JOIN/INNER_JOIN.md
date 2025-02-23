```sql
-- 2nd task: https://sqlbolt.com/lesson/select_queries_with_joins
-- my soln:
SELECT Title, Domestic_sales, International_sales
FROM Movies
INNER JOIN Boxoffice
ON Movies.Id = Boxoffice.Movie_Id and Boxoffice.International_sales > Boxoffice.Domestic_sales;

-- soln
SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;
```
<details><summary>chatGPT's feedback: </summary>

  
Both queries retrieve the same data but differ in how they apply the condition `international_sales > domestic_sales`.  

### **Key Differences**  

| Aspect | First Query (`INNER JOIN ... ON ... AND condition`) | Second Query (`JOIN ... WHERE condition`) |
|--------|-----------------------------------------------------|------------------------------------------|
| **Condition Placement** | The filter `Boxoffice.International_sales > Boxoffice.Domestic_sales` is inside the `ON` clause of the `JOIN`. | The filter is applied in the `WHERE` clause after the join is performed. |
| **Execution Difference** | The join only includes rows where `international_sales > domestic_sales`. If a movie does not meet this condition, it is **excluded from the join itself**. | First, all rows from `movies` and `boxoffice` that match on `movies.id = boxoffice.movie_id` are joined. Then, the `WHERE` condition filters out rows where `international_sales ≤ domestic_sales`. |
| **Effect on Performance** | The database engine may optimize this differently depending on indexes, but generally, filtering in the `ON` clause **restricts data earlier**, potentially improving performance. | Since filtering happens after the join, it may result in **more initial matches** before filtering, which could be less efficient. |
| **Readability & Best Practice** | Less common and can be **confusing** since the `ON` clause is typically used only for matching conditions. | More readable and follows standard SQL practices, as filtering conditions **belong in the WHERE clause**. |

### **Which One is Better?**
- The **second query** is preferred in terms of readability and standard SQL practices.  
- If performance is a concern and an **index exists on `Boxoffice.International_sales` or `Boxoffice.Domestic_sales`**, the first query might be slightly more efficient.

</details>
