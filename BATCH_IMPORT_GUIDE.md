# Simplified Batch Import - Run All Inserts at Once

Access SQL View can run multiple statements if they're on separate lines with semicolons. Use these batch files for faster import!

## Quick Method: Use Batch Files (Recommended)

### Step 1: Import Instructors (One Click)

1. **Create tab** → **Query Design**
2. **Close** Show Table dialog
3. **Design tab** → **SQL View**
4. **Open** `import_instructors_batch.sql`
5. **Copy ALL** (Ctrl + A, Ctrl + C)
6. **Paste** into SQL View (Ctrl + V)
7. **Run** (F5 or red exclamation mark)
8. Access will execute all 5 INSERT statements automatically!

### Step 2: Import Members (One Click)

1. **Clear SQL View** (Ctrl + A, Delete)
2. **Open** `import_members_batch.sql`
3. **Copy ALL** → **Paste** → **Run**
4. All 12 members imported at once!

### Step 3: Import Classes (One Click)

1. **Clear SQL View**
2. **Open** `import_classes_batch.sql`
3. **Copy ALL** → **Paste** → **Run**
4. All 12 classes imported at once!

---

## Alternative: All-in-One File (If Batch Works)

If Access executes all statements when pasted together, you can use:

### Complete Batch (All Tables)

1. Create a new query in SQL View
2. Copy the entire contents of all three batch files in order:
   - First: Instructors (5 statements)
   - Second: Members (12 statements)
   - Third: Classes (12 statements)
3. Run once - imports everything!

**Note:** If Access gives an error, use the separate batch files instead.

---

## Method 2: VBA Macro (Most Automated)

Create a VBA function to execute all INSERTs programmatically.

### Create VBA Macro:

1. **Press Alt + F11** (opens VBA Editor)
2. **Insert** → **Module**
3. **Paste this code:**

```vba
Sub ImportAllData()
    Dim db As Database
    Set db = CurrentDb
    
    On Error GoTo ErrorHandler
    
    ' Import Instructors
    db.Execute "INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber) VALUES ('Sarah', 'Johnson', 'Yoga', '083-555-0123')"
    db.Execute "INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber) VALUES ('Michael', 'Chen', 'CrossFit', '082-555-0234')"
    db.Execute "INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber) VALUES ('Emily', 'Rodriguez', 'Pilates', '084-555-0345')"
    db.Execute "INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber) VALUES ('David', 'Thompson', 'Swimming', '081-555-0456')"
    db.Execute "INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber) VALUES ('Lisa', 'Anderson', 'Zumba', '085-555-0567')"
    
    ' Import Members
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('John', 'Smith', 'john.smith@email.com', '083-111-2222', 'Premium')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Jane', 'Doe', 'jane.doe@email.com', '082-222-3333', 'Standard')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Robert', 'Williams', 'robert.w@email.com', '084-333-4444', 'Premium')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Mary', 'Brown', 'mary.brown@email.com', '081-444-5555', 'Basic')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('James', 'Johnson', 'james.j@email.com', '085-555-6666', 'Standard')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Patricia', 'Miller', 'patricia.m@email.com', '083-666-7777', 'Premium')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Michael', 'Davis', 'michael.d@email.com', '082-777-8888', 'Basic')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Linda', 'Garcia', 'linda.g@email.com', '084-888-9999', 'Standard')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('William', 'Rodriguez', 'william.r@email.com', '081-999-0000', 'Premium')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Elizabeth', 'Martinez', 'elizabeth.m@email.com', '085-000-1111', 'Standard')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Richard', 'Anderson', 'richard.a@email.com', '083-111-2233', 'Premium')"
    db.Execute "INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType) VALUES ('Jennifer', 'Taylor', 'jennifer.t@email.com', '082-222-3344', 'Basic')"
    
    ' Import Classes
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Morning Yoga Flow', 1, 'Mon/Wed/Fri 06:00-07:00', 20, 'Studio A')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Intensive CrossFit', 2, 'Tue/Thu 18:00-19:30', 15, 'Gym Floor')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Pilates Core Strength', 3, 'Mon/Wed 12:00-13:00', 12, 'Studio B')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Swimming Lessons - Beginner', 4, 'Sat 09:00-10:00', 10, 'Swimming Pool')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Zumba Dance Party', 5, 'Fri 19:00-20:00', 25, 'Studio A')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Advanced CrossFit', 2, 'Mon/Wed/Fri 17:00-18:30', 12, 'Gym Floor')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Yoga Relaxation', 1, 'Tue/Thu 19:00-20:00', 18, 'Studio B')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Swimming Lessons - Advanced', 4, 'Sat 10:00-11:00', 8, 'Swimming Pool')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Pilates Flexibility', 3, 'Tue/Thu 10:00-11:00', 15, 'Studio B')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Zumba Latin Fusion', 5, 'Sat 11:00-12:00', 20, 'Studio A')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Yoga Power Flow', 1, 'Wed 17:00-18:30', 16, 'Studio A')"
    db.Execute "INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('CrossFit Endurance', 2, 'Sat 08:00-09:30', 10, 'Gym Floor')"
    
    MsgBox "All data imported successfully!", vbInformation, "Import Complete"
    Exit Sub
    
ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical, "Import Error"
End Sub
```

4. **Press F5** to run
5. **Close** VBA Editor
6. All data imported automatically!

**To run again:**
- Press **Alt + F11** → Find **ImportAllData** → Press **F5**

---

## Method 3: Create Saved Queries

Create reusable queries that you can run anytime:

### Step 1: Create Query for Instructors

1. **Create tab** → **Query Design** → **SQL View**
2. Paste Instructors batch SQL
3. **Save** as "qryImportInstructors"
4. **Run** anytime by double-clicking the query

### Step 2: Create Query for Members

1. **Create tab** → **Query Design** → **SQL View**
2. Paste Members batch SQL
3. **Save** as "qryImportMembers"
4. **Run** anytime

### Step 3: Create Query for Classes

1. **Create tab** → **Query Design** → **SQL View**
2. Paste Classes batch SQL
3. **Save** as "qryImportClasses"
4. **Run** anytime

**Then just double-click each query in order!**

---

## Troubleshooting

### Access Still Runs One Statement at a Time

**Solution:** Access may prompt you for each INSERT. This is normal for action queries. You can:
- Click "Yes" repeatedly, OR
- Use the VBA method (runs without prompts)
- Or check "Do not show this message again" in Access options

### Error: "Syntax error" when pasting multiple statements

**Solution:**
- Make sure each statement ends with semicolon
- Check for typos
- Try pasting statements one at a time to find the error
- Use the separate batch files instead

### Want to Avoid "Are you sure?" Prompts

**Solution:**
1. **File** → **Options** → **Client Settings**
2. Find **"Confirm"** section
3. **Uncheck** "Action queries" (or specific prompts)
4. Click **OK**

**OR** use VBA method (no prompts)

---

## Recommended Workflow

### For Quick Import:
1. Use **batch SQL files** (import_instructors_batch.sql, etc.)
2. Copy entire file → Paste → Run
3. Repeat for each table

### For Repeated Imports:
1. Create **saved queries** (qryImportInstructors, etc.)
2. Double-click to run anytime

### For Most Automation:
1. Use **VBA macro** (ImportAllData)
2. Press F5 - done!

---

## Quick Summary

**3 Clicks Total:**
- ✅ Click 1: Run Instructors batch (5 records)
- ✅ Click 2: Run Members batch (12 records)  
- ✅ Click 3: Run Classes batch (12 records)

**OR**

**1 Click Total:**
- ✅ Run VBA macro - imports everything automatically!

---

**The batch files make it much faster - just copy, paste, and run!**

