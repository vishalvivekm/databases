 **Referential Actions (MySQL)**: determine what should happen to rows in a child table when a row in the referenced parent table is deleted or updated.
1. **CASCADE**:
   - **ON DELETE CASCADE**: Deletes rows in the child table that correspond to the deleted row in the parent table.
   - **ON UPDATE CASCADE**: Updates the foreign key in the child table when the referenced primary key in the parent table is updated.

2. **SET NULL**:
   - **ON DELETE SET NULL**: Sets the foreign key in the child table to `NULL` when the corresponding row in the parent table is deleted.
   - **ON UPDATE SET NULL**: Sets the foreign key in the child table to `NULL` when the referenced primary key in the parent table is updated.

   > **Note**: The foreign key column in the child table must allow `NULL` values for this action to work.

3. **RESTRICT**:
   - Prevents the `DELETE` or `UPDATE` operation on the parent table if there are matching rows in the child table.
   - MySQL **enforces this action immediately** without deferring the check, meaning it will throw an error if the action is attempted.

4. **SET DEFAULT**:
   - **Not Supported in MySQL**: MySQL does not support `SET DEFAULT`. Other database systems (e.g., PostgreSQL) allow setting a default value when the parent row is deleted or updated.

5. **NO ACTION**:
   - **Equivalent to RESTRICT in MySQL**: MySQL treats `NO ACTION` the same as `RESTRICT`. Both prevent the `DELETE` or `UPDATE` if dependent rows exist in the child table.

   > **Key Difference in Other Databases**: In some databases (e.g., PostgreSQL), `NO ACTION` checks constraints **after the SQL statement completes**, whereas `RESTRICT` checks constraints **immediately**.

---

### Summary:
- **CASCADE**: Automatically propagates changes (DELETE/UPDATE) to the child table.
- **SET NULL**: Sets the foreign key in the child table to `NULL`.
- **RESTRICT**: Prevents the action if child rows exist.
- **SET DEFAULT**: **Not supported in MySQL**.
- **NO ACTION**: Same as `RESTRICT` in MySQL.

---

### Example Table with Referential Actions:

```sql
CREATE TABLE parent (
    id INT PRIMARY KEY
);

CREATE TABLE child (
    id INT PRIMARY KEY,
    parent_id INT,
    CONSTRAINT fk_parent FOREIGN KEY (parent_id)
    REFERENCES parent(id)
    ON DELETE CASCADE
    ON UPDATE SET NULL
);
```

This setup:
- Deletes rows in `child` when a referenced row in `parent` is deleted (`ON DELETE CASCADE`).
- Sets `parent_id` to `NULL` in `child` when the primary key in `parent` is updated (`ON UPDATE SET NULL`).

- Checkout this fiddle: https://www.db-fiddle.com/f/tRDs6ZnzZoeA4RNszGqspx/0
