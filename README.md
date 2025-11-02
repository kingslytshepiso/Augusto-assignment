# Fitness Centre Database - Assignment Files

This repository contains all the necessary files and documentation to complete HCLT108-1 Formative Assessment 3.

## 📁 File Structure

### Data Files

- `sample_data_members.csv` - 12 sample member records (minimum 10 required)
- `sample_data_classes.csv` - 12 sample class records (minimum 10 required)
- `sample_data_instructors.csv` - 5 sample instructor records (minimum 5 required)

### Documentation Files

- `database_structure.sql` - SQL reference for table structures
- `access_create_tables.sql` - **Access-compatible SQL to create tables quickly**
- `ACCESS_DATABASE_CREATION_GUIDE.md` - Step-by-step guide to create the Access database
- `ACCESS_SQL_IMPORT_GUIDE.md` - **Guide to import SQL structure into Access**
- `QUESTION2_INSTRUCTIONS.md` - Detailed instructions for Question 2 tasks
- `QUESTION2_ANSWER_TEMPLATE.md` - Template for Question 2 answers

## 📋 Assignment Overview

### Question 1 [20 Marks]

Create a Microsoft Access database with:

- **Members Table**: MemberID, FirstName, LastName, Email, PhoneNumber, MembershipType
- **Classes Table**: ClassID, ClassName, InstructorID, Schedule, Capacity, ClassLocation
- **Instructors Table**: InstructorID, FirstName, LastName, Specialty, ContactNumber

**Requirements:**

- At least 10 records in Members and Classes tables
- At least 5 records in Instructors table
- Field properties: Required = Yes, Input Mask for PhoneNumber
- Proper naming conventions
- Relationships with referential integrity

### Question 2 [30 Marks]

Answer questions and create screenshots for:

- 2.1: Explain three main tables (6 marks)
- 2.2: Describe six MS Access data types (6 marks)
- 2.3: Relationship diagram screenshot (5 marks)
- 2.4: Query screenshot (Instructors sorted by Specialty) (4 marks)
- 2.5: Tabular form screenshot (Members with Arial Black 24pt header) (4 marks)
- 2.6: Report screenshot (Classes, no grouping) (5 marks)

## 🚀 Quick Start Guide

1. **Read the Guides:**

   - Start with `ACCESS_DATABASE_CREATION_GUIDE.md` for Question 1
   - **OR use `ACCESS_SQL_IMPORT_GUIDE.md` to create tables quickly with SQL**
   - Review `QUESTION2_INSTRUCTIONS.md` for Question 2

2. **Create the Database:**

   - **Option A (Fast):** Use `access_create_tables.sql` in Access SQL View
   - **Option B (Manual):** Follow the step-by-step guide in `ACCESS_DATABASE_CREATION_GUIDE.md`
   - Import data from CSV files or enter manually
   - **Important:** Set Required fields and Input Mask manually after SQL creation

3. **Complete Question 2:**

   - Use `QUESTION2_ANSWER_TEMPLATE.md` as your answer template
   - Follow instructions in `QUESTION2_INSTRUCTIONS.md` for screenshots

4. **Submission:**
   - Upload the Access database (.accdb file)
   - Upload a PDF with Question 2 answers and screenshots
   - **Do NOT zip the files** - upload separately

## 📝 Important Notes

### Naming Conventions

- Tables: PascalCase (Members, Classes, Instructors)
- Fields: PascalCase (MemberID, FirstName, LastName)
- No spaces or special characters

### Field Properties

- **Required**: Set to "Yes" for all important fields
- **Input Mask**: PhoneNumber in Members table = `000-000-0000`
- **Primary Keys**: All tables use AutoNumber for ID fields

### Relationships

- Instructors → Classes (One-to-Many via InstructorID)
- Enforce referential integrity
- Cascade update related fields

### Data Requirements

- Members: Minimum 10 records (12 provided)
- Classes: Minimum 10 records (12 provided)
- Instructors: Minimum 5 records (5 provided)

## ✅ Submission Checklist

### Question 1 (Database):

- [ ] All three tables created correctly
- [ ] Members table with all 6 fields (including ClassLocation in Classes)
- [ ] Instructors table created and populated
- [ ] At least 10 records in Members table
- [ ] At least 10 records in Classes table
- [ ] At least 5 records in Instructors table
- [ ] All Required fields set to "Yes"
- [ ] PhoneNumber Input Mask applied
- [ ] Relationships created with referential integrity
- [ ] Database saved (.accdb file)

### Question 2 (PDF):

- [ ] Answer to 2.1 (explanation of three tables)
- [ ] Answer to 2.2 (six data types)
- [ ] Screenshot of relationship diagram (2.3)
- [ ] Screenshot of query (2.4)
- [ ] Screenshot of form (2.5)
- [ ] Screenshot of report (2.6)
- [ ] PDF properly formatted and ready to upload

## 🎯 Grading Rubric Reference

### Question 1 (20 marks):

- Database structure: 2 marks
- Populate Members & Classes: 4 marks
- Create Instructors table: 5 marks
- Add ClassLocation column: 2 marks
- Field properties & Input Mask: 3 marks
- Naming conventions: 4 marks

### Question 2 (30 marks):

- Table explanations: 6 marks
- Data types description: 6 marks
- Relationship screenshot: 5 marks
- Query screenshot: 4 marks
- Form screenshot: 4 marks
- Report screenshot: 5 marks

## 📧 Support

Refer to the study guide for additional information on:

- MS Access data types
- Creating relationships
- Query design
- Form creation
- Report generation

## 📅 Due Date

**3 November 2025**

Good luck with your assignment! 🎓
