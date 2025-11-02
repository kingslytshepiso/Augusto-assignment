# Fitness Centre Database Assignment - Complete Guide

**Course:** HCLT108-1 - Computer Literacy Advanced  
**Assessment:** Formative Assessment 3  
**Due Date:** 3 November 2025  
**Total Marks:** 50 (Question 1: 20 marks | Question 2: 30 marks)

---

## 📚 Quick Navigation

- **[Getting Started](#-getting-started)** - Choose your method
- **[Question 1 Guide](#-question-1-database-creation-20-marks)** - Database setup
- **[Question 2 Guide](#-question-2-written-answers--screenshots-30-marks)** - Answers & screenshots
- **[File Structure](#-file-structure)** - All available files
- **[Submission Checklist](#-submission-checklist)** - Final verification

---

## 🚀 Getting Started

### Choose Your Database Creation Method:

#### **Option A: Quick SQL Method (Recommended for speed)**

1. Read: `ACCESS_SQL_IMPORT_GUIDE.md`
2. Use: `access_create_tables.sql`
3. **Then:** Set Required fields and Input Mask manually

#### **Option B: Manual Step-by-Step Method**

1. Read: `ACCESS_DATABASE_CREATION_GUIDE.md`
2. Follow each step carefully
3. More detailed, slower but thorough

### Essential Files You Need:

- ✅ Sample data CSV files (for importing records)
- ✅ Question 2 answer template
- ✅ Question 2 screenshot instructions

---

## 📋 Question 1: Database Creation (20 marks)

### Requirements Summary:

- Create 3 tables: **Members**, **Instructors**, **Classes**
- Add **ClassLocation** field to Classes table
- Minimum 10 records in Members & Classes
- Minimum 5 records in Instructors
- Set **Required = Yes** for all fields
- Set **Input Mask: 000-000-0000** for PhoneNumber
- Create relationships with referential integrity

### Step-by-Step:

1. **Create Database Structure**

   - Use SQL method OR manual method (see guides above)
   - Verify all 3 tables exist

2. **Set Field Properties**

   - Open each table in **Design View**
   - Set **Required = Yes** for all fields
   - Add **Input Mask** to PhoneNumber in Members table

3. **Add Data**

   - Import from CSV files OR enter manually
   - Verify record counts (10+ Members, 10+ Classes, 5+ Instructors)

4. **Create Relationships**

   - **Database Tools** → **Relationships**
   - Link Instructors → Classes
   - Enable **Referential Integrity**

5. **Final Checks**
   - Verify naming conventions (PascalCase)
   - Test Input Mask works
   - Save database (.accdb file)

### 📖 Detailed Guides:

- **Manual Method:** `ACCESS_DATABASE_CREATION_GUIDE.md`
- **SQL Method:** `ACCESS_SQL_IMPORT_GUIDE.md`
- **Quick Checklist:** `QUICK_CHECKLIST.md`

---

## 📝 Question 2: Written Answers & Screenshots (30 marks)

### Overview:

- **2.1** - Written explanation of tables (6 marks) - NO SCREENSHOT
- **2.2** - Written description of data types (6 marks) - NO SCREENSHOT
- **2.3** - Relationship diagram screenshot (5 marks) - ⚠️ **SCREENSHOT REQUIRED**
- **2.4** - Query result screenshot (4 marks) - ⚠️ **SCREENSHOT REQUIRED**
- **2.5** - Form screenshot (4 marks) - ⚠️ **SCREENSHOT REQUIRED**
- **2.6** - Report screenshot (5 marks) - ⚠️ **SCREENSHOT REQUIRED**

### Detailed Requirements:

#### 2.1 Explain Three Tables (6 marks) - 📄 **WRITTEN ANSWER**

**No screenshot needed** - Write explanation of:

- Members table function & purpose
- Instructors table function & purpose
- Classes table function & purpose

#### 2.2 Describe Six Data Types (6 marks) - 📄 **WRITTEN ANSWER**

**No screenshot needed** - Describe:

- Short Text
- Long Text
- Number
- Date/Time
- Currency
- AutoNumber

#### 2.3 Relationship Diagram (5 marks) - 📸 **SCREENSHOT REQUIRED**

- **Action:** Create relationship between Instructors and Classes
- **Requirement:** Show referential integrity (thick line)
- **Screenshot:** Must show all tables, fields, and relationship lines
- **Guide:** See `QUESTION2_INSTRUCTIONS.md` section 2.3

#### 2.4 Query Result (4 marks) - 📸 **SCREENSHOT REQUIRED**

- **Action:** Query Instructors table
- **Requirement:** All attributes, sorted by Specialty (Descending)
- **Screenshot:** Show query results in Datasheet View
- **Guide:** See `QUESTION2_INSTRUCTIONS.md` section 2.4

#### 2.5 Tabular Form (4 marks) - 📸 **SCREENSHOT REQUIRED**

- **Action:** Create tabular form of Members table
- **Requirement:** Header in **Arial Black, size 24**
- **Screenshot:** Show form with header and all records
- **Guide:** See `QUESTION2_INSTRUCTIONS.md` section 2.5

#### 2.6 Report (5 marks) - 📸 **SCREENSHOT REQUIRED**

- **Action:** Create report of Classes table
- **Requirement:** **NO grouping levels**
- **Screenshot:** Show report with all attributes, no grouping
- **Guide:** See `QUESTION2_INSTRUCTIONS.md` section 2.6

### 📖 Complete Guides:

- **Step-by-Step Instructions:** `QUESTION2_INSTRUCTIONS.md`
- **Answer Template:** `QUESTION2_ANSWER_TEMPLATE.md`
- **Screenshot Quick Reference:** `SCREENSHOT_REQUIREMENTS.md`

---

## 📁 File Structure

### 📊 Data Files (Import into Access)

```
sample_data_members.csv      → 12 member records
sample_data_classes.csv       → 12 class records
sample_data_instructors.csv  → 5 instructor records
```

### 🔧 Database Creation Files

```
database_structure.sql           → SQL reference (generic)
access_create_tables.sql         → Access-compatible SQL (use this!)
ACCESS_DATABASE_CREATION_GUIDE.md → Manual step-by-step guide
ACCESS_SQL_IMPORT_GUIDE.md      → Quick SQL import method
```

### 📝 Question 2 Files

```
QUESTION2_INSTRUCTIONS.md         → Detailed screenshot & answer steps
QUESTION2_ANSWER_TEMPLATE.md     → Complete answer template with placeholders
QUESTION2_FINAL_DOCUMENT.md      → Word-ready document with all answers
QUESTION2_Word_Document_Ready.txt → Plain text version for easy copying
COPY_TO_WORD_INSTRUCTIONS.md     → How to copy to Microsoft Word
```

### ✅ Reference Files

```
README.md                  → This file (main guide)
QUICK_CHECKLIST.md        → Quick reference checklist
SCREENSHOT_REQUIREMENTS.md → Quick screenshot reference guide
```

---

## ⚠️ Screenshot Requirements Summary

### **4 Screenshots Required for Question 2:**

| Question | What to Screenshot   | Requirements                                                          |
| -------- | -------------------- | --------------------------------------------------------------------- |
| **2.3**  | Relationship Diagram | Show all tables, fields, relationship line with referential integrity |
| **2.4**  | Query Result         | Instructors table, all fields, sorted by Specialty (Descending)       |
| **2.5**  | Tabular Form         | Members table, Arial Black 24pt header, all records visible           |
| **2.6**  | Report               | Classes table, all fields, **NO grouping levels**                     |

### Screenshot Tips:

- **Tool:** Windows Snipping Tool (Win + Shift + S) or Print Screen
- **Format:** Save as PNG or JPG
- **Quality:** Ensure text is clear and readable
- **Caption:** Add captions in your PDF (e.g., "Figure 1: Relationship Diagram")
- **Include:** All required elements must be visible

---

## ✅ Submission Checklist

### Question 1 - Database (.accdb file):

- [ ] All 3 tables created (Members, Instructors, Classes)
- [ ] Members table: 6 fields (MemberID, FirstName, LastName, Email, PhoneNumber, MembershipType)
- [ ] Classes table: 6 fields (ClassID, ClassName, InstructorID, Schedule, Capacity, **ClassLocation**)
- [ ] Instructors table: 5 fields (InstructorID, FirstName, LastName, Specialty, ContactNumber)
- [ ] Minimum 10 records in Members table
- [ ] Minimum 10 records in Classes table
- [ ] Minimum 5 records in Instructors table
- [ ] **Required = Yes** set for all important fields
- [ ] **Input Mask: 000-000-0000** applied to PhoneNumber in Members table
- [ ] Relationship created: Instructors → Classes with referential integrity
- [ ] Naming conventions correct (PascalCase, no spaces)
- [ ] Database saved as .accdb file

### Question 2 - PDF Document:

- [ ] Cover page with name, student number, course code, date
- [ ] **2.1:** Written explanation of three tables (6 marks)
- [ ] **2.2:** Written description of six data types (6 marks)
- [ ] **2.3:** ⚠️ **SCREENSHOT** - Relationship diagram (5 marks)
- [ ] **2.4:** ⚠️ **SCREENSHOT** - Query result (4 marks)
- [ ] **2.5:** ⚠️ **SCREENSHOT** - Tabular form (4 marks)
- [ ] **2.6:** ⚠️ **SCREENSHOT** - Report (5 marks)
- [ ] All screenshots have captions
- [ ] PDF is clear, readable, and properly formatted
- [ ] Ready to upload

### Final Submission:

- [ ] Access database file (.accdb) ready
- [ ] PDF document with answers and screenshots ready
- [ ] **Files are NOT zipped** (upload separately)
- [ ] Both files uploaded to Colcampus separately

---

## 🎯 Grading Rubric

### Question 1 (20 marks):

- Database structure: **2 marks**
- Populate Members & Classes (10+ records each): **4 marks**
- Create Instructors table (5+ records): **5 marks**
- Add ClassLocation column: **2 marks**
- Field properties & Input Mask: **3 marks**
- Naming conventions & consistency: **4 marks**

### Question 2 (30 marks):

- 2.1 - Table explanations (written): **6 marks**
- 2.2 - Data types description (written): **6 marks**
- 2.3 - Relationship screenshot: **5 marks** ⚠️
- 2.4 - Query screenshot: **4 marks** ⚠️
- 2.5 - Form screenshot: **4 marks** ⚠️
- 2.6 - Report screenshot: **5 marks** ⚠️

---

## 📖 Which Guide to Use?

### If you want to create tables quickly:

→ Read: `ACCESS_SQL_IMPORT_GUIDE.md`  
→ Use: `access_create_tables.sql`

### If you prefer detailed step-by-step:

→ Read: `ACCESS_DATABASE_CREATION_GUIDE.md`

### For Question 2 screenshots:

→ Read: `QUESTION2_INSTRUCTIONS.md`  
→ Use: `QUESTION2_ANSWER_TEMPLATE.md`

### For quick reference:

→ Read: `QUICK_CHECKLIST.md`

### For screenshot requirements:

→ Read: `SCREENSHOT_REQUIREMENTS.md`

---

## 💡 Important Notes

### Naming Conventions:

- **Tables:** PascalCase (Members, Classes, Instructors)
- **Fields:** PascalCase (MemberID, FirstName, LastName)
- **No spaces or special characters**

### Field Properties:

- **Required:** Set to "Yes" for all important fields
- **Input Mask:** PhoneNumber = `000-000-0000` (only in Members table)
- **Primary Keys:** AutoNumber fields (automatic)

### Relationships:

- **Instructors (1) → Classes (Many)** via InstructorID
- **Must enable:** Referential Integrity
- **Optional:** Cascade Update Related Fields

### Common Mistakes to Avoid:

- ❌ Forgetting ClassLocation column in Classes table
- ❌ Not setting Required = Yes after SQL creation
- ❌ Forgetting Input Mask on PhoneNumber
- ❌ Adding grouping to Classes report (must have NO grouping)
- ❌ Wrong font/size on form header (must be Arial Black 24pt)
- ❌ Wrong sort order on query (must be Descending)
- ❌ Zipping files (must upload separately)

---

## 📅 Due Date

**3 November 2025**

Submit:

1. Access database (.accdb file)
2. PDF with Question 2 answers and screenshots

**Upload separately - do NOT zip!**

---

Good luck with your assignment! 🎓

For detailed instructions, refer to the specific guide files listed above.
