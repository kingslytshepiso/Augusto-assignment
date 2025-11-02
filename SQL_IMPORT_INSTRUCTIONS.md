# How to Import Data Using SQL in MS Access

This guide shows you how to use SQL INSERT statements to import data into your Access database.

## Prerequisites

- ✅ Your Access database is created with all three tables
- ✅ Tables have correct structure (fields match INSERT statements)
- ✅ Required fields and Input Mask are set (if needed)

---

## Method 1: Execute All Inserts in One Query (Recommended)

### Step 1: Open SQL View

1. **Open your Access database**
2. **Create tab** → Click **"Query Design"**
3. **Close** the "Show Table" dialog (click X)
4. **Design tab** → Click **"SQL View"** (or View → SQL View)

### Step 2: Copy SQL Statements

1. **Open** `import_data_with_sql.sql` in a text editor
2. **Copy all content** (Ctrl + A, Ctrl + C)

### Step 3: Execute Inserts in Order

#### Import Instructors First:

1. In SQL View, paste ONLY the Instructors section:
   ```sql
   INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
   VALUES ('Sarah', 'Johnson', 'Yoga', '083-555-0123');
   
   INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
   VALUES ('Michael', 'Chen', 'CrossFit', '082-555-0234');
   
   -- ... (all 5 INSERT statements)
   ```

2. **Click "Run"** (red exclamation mark) or press **F5**
3. You should see: "You are about to append 5 row(s)..." → Click **"Yes"**
4. **Verify:** Open Instructors table - should have 5 records
5. **Note the InstructorID values** (should be 1, 2, 3, 4, 5 if this is first data)

#### Import Members Second:

1. **Clear SQL View** (delete all text)
2. Paste ONLY the Members section (all 12 INSERT statements)
3. **Click "Run"** (F5)
4. Click **"Yes"** to confirm
5. **Verify:** Open Members table - should have 12 records

#### Import Classes Last:

1. **Clear SQL View**
2. Paste ONLY the Classes section (all 12 INSERT statements)
3. **IMPORTANT:** Check InstructorID values match your Instructors table
   - If InstructorID started at 1, values 1-5 are correct
   - If different, update the InstructorID values in INSERT statements
4. **Click "Run"** (F5)
5. Click **"Yes"** to confirm
6. **Verify:** Open Classes table - should have 12 records

---

## Method 2: Execute One INSERT at a Time (If Errors Occur)

If you get errors with Method 1, execute each INSERT statement separately:

### For Each INSERT Statement:

1. **SQL View** → Clear previous content
2. **Paste ONE INSERT statement:**
   ```sql
   INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
   VALUES ('Sarah', 'Johnson', 'Yoga', '083-555-0123');
   ```
3. **Run** (F5)
4. **Repeat** for each INSERT statement

**Note:** This is slower but helps identify which specific record causes errors.

---

## Method 3: Use Separate Query Files (Organized)

Create three separate SQL files and execute each:

1. **Create tab** → **Query Design** → **SQL View**
2. Paste Instructors INSERTs → Save as "Import_Instructors"
3. Paste Members INSERTs → Save as "Import_Members"
4. Paste Classes INSERTs → Save as "Import_Classes"
5. Run each query when needed

---

## Troubleshooting SQL Import

### Error: "Syntax error in INSERT INTO statement"

**Possible Causes:**
- Missing comma between values
- Missing single quotes around text values
- Extra commas or semicolons
- Field name mismatch

**Solution:**
- Check field names match exactly (case-sensitive in some versions)
- Ensure text values are in single quotes: `'Text Value'`
- Verify all required fields are included

### Error: "The value you entered isn't valid for this field"

**Possible Causes:**
- PhoneNumber format doesn't match Input Mask
- Data type mismatch
- Required field missing

**Solution:**
- Check PhoneNumber format: `083-111-2222` (matches `000-000-0000` mask)
- Verify all required fields have values
- Check data types match (text, numbers, etc.)

### Error: "The changes you requested to the table were not successful"

**Possible Causes:**
- Duplicate primary key
- Referential integrity violation
- Constraint violation

**Solution:**
- Ensure AutoNumber fields are NOT in INSERT statements
- For Classes: Verify InstructorID values exist in Instructors table
- Clear existing data if needed: `DELETE FROM Instructors;` (then re-insert)

### Error: "Cannot add or change record because a related record is required"

**Cause:** Classes table INSERT references InstructorID that doesn't exist

**Solution:**
1. Import Instructors first
2. Check InstructorID values in Instructors table
3. Update Classes INSERT statements with correct InstructorID values

### InstructorID Mismatch

**Problem:** Classes references InstructorID values that don't exist

**Solution:**
1. After importing Instructors, open Instructors table
2. Check actual InstructorID values (may not be 1-5 if records were deleted)
3. Update Classes INSERT statements:
   ```sql
   -- If first Instructor has ID = 5, change:
   VALUES ('Morning Yoga Flow', 5, ...);  -- Changed from 1 to 5
   ```
4. Or use a query to find correct IDs:
   ```sql
   SELECT InstructorID, FirstName, LastName FROM Instructors;
   ```

---

## Verification After Import

### Check Record Counts:

```sql
-- Count records in each table
SELECT COUNT(*) AS InstructorCount FROM Instructors;
SELECT COUNT(*) AS MemberCount FROM Members;
SELECT COUNT(*) AS ClassCount FROM Classes;
```

### Verify InstructorID Relationships:

```sql
-- Check which Instructors have classes assigned
SELECT DISTINCT c.InstructorID, i.FirstName, i.LastName
FROM Classes c
INNER JOIN Instructors i ON c.InstructorID = i.InstructorID;
```

### Check for Missing Relationships:

```sql
-- Find Classes with invalid InstructorID
SELECT c.ClassID, c.ClassName, c.InstructorID
FROM Classes c
LEFT JOIN Instructors i ON c.InstructorID = i.InstructorID
WHERE i.InstructorID IS NULL;
-- Should return 0 rows if all relationships are valid
```

---

## Quick SQL Import Steps Summary

1. ✅ **Create tab** → **Query Design**
2. ✅ **Close** Show Table dialog
3. ✅ **Design tab** → **SQL View**
4. ✅ **Paste SQL INSERT statements** (one section at a time)
5. ✅ **Run** (F5)
6. ✅ **Confirm** (Click Yes)
7. ✅ **Verify** in table

---

## SQL INSERT Statement Format

```sql
INSERT INTO TableName (Field1, Field2, Field3)
VALUES ('Value1', 'Value2', 'Value3');
```

**Key Points:**
- AutoNumber fields (ID fields) are **NOT included**
- Text values must be in **single quotes**: `'Text'`
- Numbers don't need quotes: `20`
- Separate multiple INSERTs with semicolons or run separately
- Field names must match exactly (case may matter)

---

## Advantages of SQL Import Method

✅ **Fast:** Can import all records at once
✅ **Repeatable:** Save queries for reuse
✅ **Precise:** Exact control over what gets inserted
✅ **Debuggable:** Easy to see which statement fails
✅ **No wizard needed:** Direct execution

---

## When to Use SQL vs Import Wizard

**Use SQL Method When:**
- You want precise control
- You're comfortable with SQL
- You want to save queries for reuse
- You need to modify data before inserting

**Use Import Wizard When:**
- You prefer graphical interface
- Data is already in CSV format
- You want automatic field mapping
- You're not comfortable with SQL

---

## Complete Example: All Three Tables in Sequence

```sql
-- Step 1: Clear existing data (optional)
DELETE FROM Classes;
DELETE FROM Members;
DELETE FROM Instructors;

-- Step 2: Insert Instructors
INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('Sarah', 'Johnson', 'Yoga', '083-555-0123');
-- ... (all 5 statements)

-- Step 3: Insert Members
INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('John', 'Smith', 'john.smith@email.com', '083-111-2222', 'Premium');
-- ... (all 12 statements)

-- Step 4: Insert Classes
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Morning Yoga Flow', 1, 'Mon/Wed/Fri 06:00-07:00', 20, 'Studio A');
-- ... (all 12 statements)
```

---

## Need Help?

- Check `IMPORT_DATA_GUIDE.md` for Import Wizard method
- Check `ACCESS_SQL_IMPORT_GUIDE.md` for SQL table creation
- Access Help: Press F1 in Access for SQL assistance

**Good luck with your SQL import!**

