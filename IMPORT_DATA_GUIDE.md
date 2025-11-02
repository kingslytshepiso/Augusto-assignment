# How to Import Sample Data into MS Access

This guide shows you how to import the CSV data files into your Access database tables.

## Prerequisites

- ✅ Your Access database is created with all three tables (Members, Instructors, Classes)
- ✅ CSV files are ready in your project folder:
  - `sample_data_members.csv`
  - `sample_data_classes.csv`
  - `sample_data_instructors.csv`

---

## Method 1: Import from External Data (Recommended)

### Step 1: Import Instructors Table Data

1. **Open your Access database**

2. **Go to External Data tab**
   - Click on **"External Data"** tab at the top
   - Find the **"Import & Link"** group

3. **Select Text File**
   - Click on **"Text File"** button
   - Or click on **"New Data Source"** → **"From File"** → **"Text File"**

4. **Browse for CSV File**
   - In the "Get External Data" dialog box
   - Click **"Browse..."** button
   - Navigate to your project folder
   - Select **`sample_data_instructors.csv`**
   - Click **"Open"**

5. **Import Wizard Settings**
   - Select **"Import the source data into a new table in the current database"**
   - OR select **"Append a copy of the records to the table"** and choose **"Instructors"**
   - Click **"OK"**

6. **Import Text Wizard - Step 1**
   - Select **"Delimited"** (CSV files are delimited)
   - Check **"First Row Contains Field Names"** ✅
   - Click **"Next"**

7. **Import Text Wizard - Step 2**
   - Choose delimiter: **"Comma"** ✅
   - Preview should show columns separated correctly
   - Click **"Next"**

8. **Import Text Wizard - Step 3 (Optional)**
   - You can skip field information if importing into existing table
   - Or review each field if needed
   - Click **"Next"**

9. **Import Text Wizard - Step 4**
   - **If importing to new table:** Choose primary key (select **"Let Access add primary key"** - will create new ID)
   - **If appending to existing table:** Table name should show "Instructors"
   - Click **"Next"**

10. **Import Text Wizard - Step 5**
    - If new table: Enter table name: **"Instructors"** (or skip if appending)
    - Click **"Finish"**

11. **Save Import Steps (Optional)**
    - Check **"Save import steps"** if you want to reuse
    - Or uncheck and click **"Close"**

12. **Verify Import**
    - Open **Instructors** table in Datasheet View
    - You should see 5 records
    - **Note:** The InstructorID will be auto-generated (may start from 1 or continue from existing)

---

### Step 2: Import Members Table Data

Follow the same steps as above, but:

- Use file: **`sample_data_members.csv`**
- Target table: **"Members"**
- Should import 12 records

**Important Note:** Since Members table has PhoneNumber with Input Mask, after import:
- Open Members table in Design View
- Verify PhoneNumber field has Input Mask: `000-000-0000`
- If not, add it manually (see ACCESS_DATABASE_CREATION_GUIDE.md)

---

### Step 3: Import Classes Table Data

Follow the same steps, but:

- Use file: **`sample_data_classes.csv`**
- Target table: **"Classes"**
- Should import 12 records

**Important Note:** 
- Classes table has **InstructorID** field that references Instructors table
- Make sure InstructorID values (1-5) exist in Instructors table before importing
- The CSV has InstructorID values: 1, 2, 3, 4, 5
- These should match the InstructorID values in your Instructors table

---

## Method 2: Copy and Paste (Alternative for Small Data)

### If Import Wizard Doesn't Work:

1. **Open CSV File**
   - Open `sample_data_instructors.csv` in Excel or Notepad
   - Copy all data (Ctrl + A, Ctrl + C)

2. **Open Access Table**
   - Open **Instructors** table in Datasheet View

3. **Paste Data**
   - Click on the first empty row
   - Paste (Ctrl + V)
   - Access may ask to confirm - click **"Yes"**

4. **Adjust IDs**
   - If IDs don't match, you may need to:
     - Let Access auto-generate new IDs
     - Or manually update InstructorID in Classes table to match

---

## Method 3: Manual Entry (If Import Fails)

If importing doesn't work, you can enter data manually:

### Instructors Table (5 records):

| FirstName | LastName | Specialty | ContactNumber |
|-----------|----------|-----------|---------------|
| Sarah | Johnson | Yoga | 083-555-0123 |
| Michael | Chen | CrossFit | 082-555-0234 |
| Emily | Rodriguez | Pilates | 084-555-0345 |
| David | Thompson | Swimming | 081-555-0456 |
| Lisa | Anderson | Zumba | 085-555-0567 |

### Members Table (12 records - sample of first 5):

| FirstName | LastName | Email | PhoneNumber | MembershipType |
|-----------|----------|-------|-------------|----------------|
| John | Smith | john.smith@email.com | 083-111-2222 | Premium |
| Jane | Doe | jane.doe@email.com | 082-222-3333 | Standard |
| Robert | Williams | robert.w@email.com | 084-333-4444 | Premium |
| Mary | Brown | mary.brown@email.com | 081-444-5555 | Basic |
| James | Johnson | james.j@email.com | 085-555-6666 | Standard |

(Continue with remaining 7 records from CSV file)

### Classes Table (12 records - sample of first 5):

| ClassName | InstructorID | Schedule | Capacity | ClassLocation |
|-----------|--------------|----------|----------|---------------|
| Morning Yoga Flow | 1 | Mon/Wed/Fri 06:00-07:00 | 20 | Studio A |
| Intensive CrossFit | 2 | Tue/Thu 18:00-19:30 | 15 | Gym Floor |
| Pilates Core Strength | 3 | Mon/Wed 12:00-13:00 | 12 | Studio B |
| Swimming Lessons - Beginner | 4 | Sat 09:00-10:00 | 10 | Swimming Pool |
| Zumba Dance Party | 5 | Fri 19:00-20:00 | 25 | Studio A |

(Continue with remaining 7 records from CSV file)

---

## Troubleshooting Import Issues

### Problem: "Field doesn't exist" Error
**Solution:**
- Make sure table structure matches CSV columns
- Check field names match exactly (case-sensitive)
- Verify all required fields are in CSV

### Problem: "Input Mask" Error
**Solution:**
- PhoneNumber in Members table may have Input Mask
- Ensure phone numbers in CSV match format: `083-111-2222`
- Or remove Input Mask temporarily, import, then re-add

### Problem: "Cannot add or change record" Error
**Solution:**
- Check if Required fields have values
- Verify data types match (text, numbers, etc.)
- Check if Primary Key conflicts exist

### Problem: InstructorID Mismatch in Classes Table
**Solution:**
1. Import Instructors first (get actual ID values)
2. Check what InstructorID values were created (may be 1, 2, 3, 4, 5 or different)
3. Update Classes CSV file with correct InstructorID values
4. Import Classes table
5. Or manually update InstructorID in Classes table after import

### Problem: Import Creates New Table Instead of Appending
**Solution:**
- When choosing import option, select **"Append a copy of the records to the table"**
- Then select the correct table name
- This adds records to existing table instead of creating new one

---

## After Import - Verification Checklist

### Instructors Table:
- [ ] Open Instructors table
- [ ] Verify 5 records imported
- [ ] Check InstructorID values (note these numbers - you'll need them)
- [ ] Verify all fields populated

### Members Table:
- [ ] Open Members table
- [ ] Verify 12 records imported (or minimum 10)
- [ ] Check PhoneNumber format (should match Input Mask)
- [ ] Verify all fields populated
- [ ] If PhoneNumber format wrong, check Input Mask in Design View

### Classes Table:
- [ ] Open Classes table
- [ ] Verify 12 records imported (or minimum 10)
- [ ] Check InstructorID values match Instructors table IDs
- [ ] Verify ClassLocation column populated
- [ ] If InstructorID doesn't match, update manually

### Relationships:
- [ ] Go to Database Tools → Relationships
- [ ] Verify relationship between Instructors and Classes works
- [ ] Test: Try to delete an Instructor who has classes (should fail if referential integrity enabled)

---

## Quick Import Steps Summary

1. **External Data tab** → **Text File**
2. **Browse** → Select CSV file
3. **Append to existing table** → Choose table name
4. **Delimited** → **Comma** → **First row has headers** ✅
5. **Next** → **Next** → **Finish**

---

## Import Order Recommendation

**Import in this order:**
1. ✅ **Instructors** first (need their IDs)
2. ✅ **Members** second (independent table)
3. ✅ **Classes** last (needs InstructorID from Instructors)

This ensures foreign key relationships work correctly.

---

## Alternative: Import Using SQL

If you're comfortable with SQL, you can also use INSERT statements:

1. **Create** tab → **Query Design**
2. **Close** Show Table dialog
3. **Design** tab → **SQL View**
4. Paste SQL INSERT statements
5. **Run** (F5)

However, this requires writing INSERT statements, so the Import Wizard method is easier.

---

## Need Help?

Refer to:
- `ACCESS_DATABASE_CREATION_GUIDE.md` - For table structure
- `QUICK_CHECKLIST.md` - For verification checklist
- Access Help: Press F1 in Access for import assistance

**Good luck with your import!**

