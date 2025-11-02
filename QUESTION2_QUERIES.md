# SQL Queries for Question 2

This file contains all SQL queries needed for Question 2 screenshots and tasks.

---

## Question 2.4: Query Instructors Table - Screenshot (4 marks)

### SQL Query:

```sql
SELECT InstructorID, FirstName, LastName, Specialty, ContactNumber
FROM Instructors
ORDER BY Specialty DESC;
```

### How to Use:

1. **Create tab** → **Query Design**
2. **Close** Show Table dialog
3. **Design tab** → **SQL View**
4. **Paste** the query above
5. **Run** (F5 or red exclamation mark)
6. Results will show in Datasheet View
7. **Take screenshot** of the results

### What This Query Does:

- **SELECT**: Shows all 5 attributes from Instructors table
  - InstructorID
  - FirstName
  - LastName
  - Specialty
  - ContactNumber
- **FROM Instructors**: Source table
- **ORDER BY Specialty DESC**: Sorts Specialty column in descending order (Z to A alphabetically)

### Expected Result Order:

Results will be sorted by Specialty alphabetically from Z to A, for example:
- Zumba
- Yoga
- Swimming
- Pilates
- CrossFit

(Or whatever order they appear alphabetically in reverse)

### Alternative Query (Using *):

If you prefer to select all fields without listing them:

```sql
SELECT *
FROM Instructors
ORDER BY Specialty DESC;
```

This achieves the same result but uses `*` (all fields) instead of listing each field.

### Verification:

Before taking screenshot, verify:
- ✅ All 5 columns are visible
- ✅ Specialty column is sorted descending (check first few rows - should start with Z, Y, W, S, P, C, etc.)
- ✅ All records are shown (should be 5 records)

### Screenshot Requirements:

- Must show query results in Datasheet View
- All attributes visible
- Specialty column clearly sorted in descending order
- Clear and readable

---

## Quick Reference: Access Query Design View Alternative

If you prefer using Query Design View instead of SQL:

1. **Create tab** → **Query Design**
2. **Add Instructors table** (double-click or select and click Add)
3. **Close** Show Table dialog
4. **Double-click all fields** in Instructors table:
   - InstructorID
   - FirstName
   - LastName
   - Specialty
   - ContactNumber
5. **Click on Specialty column** in query grid
6. **In Sort row**, select **"Descending"**
7. **Run** (F5)
8. **Take screenshot**

This produces the same result as the SQL query above.

---

## File Reference

- See `question2_4_query.sql` for the SQL query file
- See `QUESTION2_INSTRUCTIONS.md` for detailed screenshot instructions

