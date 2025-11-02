# MS Access Database Creation Guide - Fitness Centre Management System

## Question 1: Database Setup Instructions

### Step 1: Create a New Database
1. Open Microsoft Access
2. Click "Blank Database"
3. Name it "FitnessCentre" or similar
4. Choose a location and click "Create"

---

## Step 2: Create the Members Table

### Create Table in Design View:
1. Click "Create" tab → "Table Design"
2. Add the following fields:

| Field Name | Data Type | Field Properties |
|------------|-----------|------------------|
| MemberID | AutoNumber | Primary Key (set as Primary Key) |
| FirstName | Short Text | Required: Yes, Field Size: 50 |
| LastName | Short Text | Required: Yes, Field Size: 50 |
| Email | Short Text | Required: Yes, Field Size: 100 |
| PhoneNumber | Short Text | Required: Yes, Field Size: 15, **Input Mask: 000-000-0000** |
| MembershipType | Short Text | Required: Yes, Field Size: 20 |

### Setting Input Mask for PhoneNumber:
1. Click on PhoneNumber field
2. In Field Properties (bottom), find "Input Mask"
3. Click the "..." button (builder)
4. Select "Phone Number" or manually type: `000-000-0000`
5. Click OK

### Save the Table:
- Save as "Members"
- Do NOT create a primary key (MemberID is already AutoNumber)

---

## Step 3: Create the Instructors Table

### Create Table in Design View:
1. Click "Create" tab → "Table Design"
2. Add the following fields:

| Field Name | Data Type | Field Properties |
|------------|-----------|------------------|
| InstructorID | AutoNumber | Primary Key |
| FirstName | Short Text | Required: Yes, Field Size: 50 |
| LastName | Short Text | Required: Yes, Field Size: 50 |
| Specialty | Short Text | Required: Yes, Field Size: 100 |
| ContactNumber | Short Text | Required: Yes, Field Size: 15 |

- Save as "Instructors"

---

## Step 4: Create the Classes Table

### Create Table in Design View:
1. Click "Create" tab → "Table Design"
2. Add the following fields:

| Field Name | Data Type | Field Properties |
|------------|-----------|------------------|
| ClassID | AutoNumber | Primary Key |
| ClassName | Short Text | Required: Yes, Field Size: 100 |
| InstructorID | Number (Long Integer) | Required: Yes |
| Schedule | Short Text | Required: Yes, Field Size: 50 |
| Capacity | Number (Integer) | Required: Yes |
| ClassLocation | Short Text | Required: Yes, Field Size: 100 |

- Save as "Classes"

---

## Step 5: Populate Tables with Data

### Import from CSV or Enter Manually:

**Option A: Import from CSV**
1. External Data tab → "Text File"
2. Browse and select the CSV file
3. Follow the import wizard
4. Ensure "First Row Contains Field Names" is checked
5. Import to existing table or new table

**Option B: Manual Entry**
1. Open each table in Datasheet View
2. Enter records manually using the sample data provided

### Sample Data Requirements:
- **Members**: At least 10 records (provided: 12 records)
- **Classes**: At least 10 records (provided: 12 records)
- **Instructors**: At least 5 records (provided: 5 records)

---

## Step 6: Create Relationships

1. Click "Database Tools" tab → "Relationships"
2. Add all three tables (Members, Instructors, Classes)
3. Create relationship:
   - Drag **InstructorID** from Instructors table
   - Drop it on **InstructorID** in Classes table
   - Check "Enforce Referential Integrity"
   - Check "Cascade Update Related Fields"
   - Click "Create"
4. Save the relationship diagram (Ctrl+S)

**Note**: Members table is standalone for this assignment, but Instructors and Classes are related.

---

## Step 7: Field Properties Verification

### Verify Required Fields:
1. Open each table in Design View
2. Check each field's "Required" property is set to "Yes"
3. Verify PhoneNumber has Input Mask: `000-000-0000`

### Verify Naming Conventions:
- Table names: Singular, PascalCase (Members, Classes, Instructors)
- Field names: PascalCase (MemberID, FirstName, etc.)
- No spaces or special characters in names

---

## Checklist Before Submission:

- [ ] All three tables created (Members, Instructors, Classes)
- [ ] Members table has MemberID, FirstName, LastName, Email, PhoneNumber, MembershipType
- [ ] Classes table has ClassID, ClassName, InstructorID, Schedule, Capacity, ClassLocation
- [ ] Instructors table has InstructorID, FirstName, LastName, Specialty, ContactNumber
- [ ] At least 10 records in Members table
- [ ] At least 10 records in Classes table
- [ ] At least 5 records in Instructors table
- [ ] All Required fields set to "Yes"
- [ ] PhoneNumber in Members has Input Mask: 000-000-0000
- [ ] Relationships created with referential integrity
- [ ] Consistent naming conventions used
- [ ] Database saved and ready to upload

---

## Tips:
- Use consistent naming: PascalCase for all fields and tables
- Always set Primary Keys (AutoNumber fields)
- Set Required = Yes for important fields
- Test data entry to ensure Input Mask works correctly
- Save frequently (Ctrl+S)

