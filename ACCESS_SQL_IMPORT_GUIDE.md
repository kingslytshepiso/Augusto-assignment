# How to Import SQL Table Structure into MS Access

This guide shows you how to use SQL CREATE TABLE statements to quickly create tables in MS Access.

## Method 1: Using SQL View in Query Design (Recommended)

### Step-by-Step Instructions:

#### 1. Create First Table (Instructors)
1. Open your Access database
2. Click **"Create"** tab
3. Click **"Query Design"**
4. **Close the "Show Table" dialog box** (click X or Cancel)
5. Click **"Design"** tab (or right-click on the query)
6. Click **"SQL View"** (or View → SQL View)
7. Copy and paste the first CREATE TABLE statement:

```sql
CREATE TABLE Instructors (
    InstructorID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Specialty TEXT(100) NOT NULL,
    ContactNumber TEXT(15) NOT NULL
);
```

8. Click the **"Run"** button (red exclamation mark) or press **F5**
9. You should see "Create Table" dialog - click **OK**
10. Close the query (don't save it, unless you want to keep it)
11. Verify the table appears in the Navigation Pane

#### 2. Create Second Table (Members)
1. Repeat steps 2-10 above
2. Use this SQL:

```sql
CREATE TABLE Members (
    MemberID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Email TEXT(100) NOT NULL,
    PhoneNumber TEXT(15) NOT NULL,
    MembershipType TEXT(20) NOT NULL
);
```

#### 3. Create Third Table (Classes)
1. Repeat steps 2-10 above
2. Use this SQL:

```sql
CREATE TABLE Classes (
    ClassID AUTOINCREMENT PRIMARY KEY,
    ClassName TEXT(100) NOT NULL,
    InstructorID LONG NOT NULL,
    Schedule TEXT(50) NOT NULL,
    Capacity INTEGER NOT NULL,
    ClassLocation TEXT(100) NOT NULL
);
```

---

## Method 2: Using VBA Module (Alternative)

### Create a VBA Module:

1. Press **Alt + F11** to open VBA Editor
2. Click **Insert** → **Module**
3. Paste this code:

```vba
Sub CreateAllTables()
    Dim db As Database
    Set db = CurrentDb
    
    On Error Resume Next
    
    ' Drop tables if they exist (optional)
    db.Execute "DROP TABLE Instructors"
    db.Execute "DROP TABLE Members"
    db.Execute "DROP TABLE Classes"
    
    On Error GoTo 0
    
    ' Create Instructors Table
    db.Execute "CREATE TABLE Instructors (" & _
        "InstructorID AUTOINCREMENT PRIMARY KEY, " & _
        "FirstName TEXT(50) NOT NULL, " & _
        "LastName TEXT(50) NOT NULL, " & _
        "Specialty TEXT(100) NOT NULL, " & _
        "ContactNumber TEXT(15) NOT NULL)"
    
    ' Create Members Table
    db.Execute "CREATE TABLE Members (" & _
        "MemberID AUTOINCREMENT PRIMARY KEY, " & _
        "FirstName TEXT(50) NOT NULL, " & _
        "LastName TEXT(50) NOT NULL, " & _
        "Email TEXT(100) NOT NULL, " & _
        "PhoneNumber TEXT(15) NOT NULL, " & _
        "MembershipType TEXT(20) NOT NULL)"
    
    ' Create Classes Table
    db.Execute "CREATE TABLE Classes (" & _
        "ClassID AUTOINCREMENT PRIMARY KEY, " & _
        "ClassName TEXT(100) NOT NULL, " & _
        "InstructorID LONG NOT NULL, " & _
        "Schedule TEXT(50) NOT NULL, " & _
        "Capacity INTEGER NOT NULL, " & _
        "ClassLocation TEXT(100) NOT NULL)"
    
    MsgBox "All tables created successfully!", vbInformation
End Sub
```

4. Press **F5** to run the macro
5. Close VBA Editor

---

## Important: After Creating Tables with SQL

### ⚠️ SQL Creates Basic Structure Only

SQL will create the tables with basic fields, but you **MUST** manually set:

1. **Required Fields**
   - Open each table in **Design View**
   - Select each field (except AutoNumber fields)
   - Set **Required = Yes** in Field Properties

2. **Input Mask for PhoneNumber**
   - Open **Members** table in Design View
   - Click **PhoneNumber** field
   - In Field Properties, find **Input Mask**
   - Click the **"..."** (builder) button
   - Select **"Phone Number"** or enter: `000-000-0000`
   - Click OK

3. **Field Sizes** (Optional - already set in SQL)
   - Verify field sizes are correct in Design View
   - Adjust if needed

4. **Relationships**
   - Go to **Database Tools** → **Relationships**
   - Add all tables
   - Create relationship: Instructors → Classes
   - Enable **Referential Integrity**

---

## Quick Reference: Complete SQL Commands

### Execute each one separately in SQL View:

**Instructors:**
```sql
CREATE TABLE Instructors (
    InstructorID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Specialty TEXT(100) NOT NULL,
    ContactNumber TEXT(15) NOT NULL
);
```

**Members:**
```sql
CREATE TABLE Members (
    MemberID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Email TEXT(100) NOT NULL,
    PhoneNumber TEXT(15) NOT NULL,
    MembershipType TEXT(20) NOT NULL
);
```

**Classes:**
```sql
CREATE TABLE Classes (
    ClassID AUTOINCREMENT PRIMARY KEY,
    ClassName TEXT(100) NOT NULL,
    InstructorID LONG NOT NULL,
    Schedule TEXT(50) NOT NULL,
    Capacity INTEGER NOT NULL,
    ClassLocation TEXT(100) NOT NULL
);
```

---

## Troubleshooting

### Error: "Syntax error in CREATE TABLE statement"
- Make sure you're in **SQL View** (not Design View)
- Check for typos or missing commas
- Ensure field names don't have spaces (use PascalCase)

### Error: "Table already exists"
- Delete the existing table first (right-click → Delete)
- Or rename one of them

### Tables Created But Missing Properties
- This is normal! SQL creates basic structure only
- You **must** manually set Required fields and Input Mask in Design View
- See "After Creating Tables with SQL" section above

### Primary Key Not Showing
- Access should auto-detect PRIMARY KEY in SQL
- If not, open Design View and set it manually

---

## Summary Workflow

1. ✅ Create tables using SQL (fast)
2. ✅ Set Required = Yes for all fields (Design View)
3. ✅ Set Input Mask for PhoneNumber (Design View)
4. ✅ Create Relationships (Database Tools)
5. ✅ Import data (External Data → Text File)
6. ✅ Verify everything works

---

## Pro Tip

After creating tables with SQL:
- **Right-click each table** → **Design View**
- **Review all field properties**
- **Set Required = Yes** for important fields
- **Add Input Mask** for PhoneNumber
- This ensures you meet all assignment requirements!

