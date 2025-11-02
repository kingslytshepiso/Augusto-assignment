# Quick Reference Checklist

## Before Starting
- [ ] Microsoft Access installed and ready
- [ ] Review assignment requirements
- [ ] Read ACCESS_DATABASE_CREATION_GUIDE.md

## Question 1: Database Creation

### Table Creation
- [ ] Create Members table with 6 fields
- [ ] Create Instructors table with 5 fields
- [ ] Create Classes table with 6 fields (including ClassLocation)

### Field Properties
- [ ] Set all Required fields to "Yes"
- [ ] Set PhoneNumber Input Mask: `000-000-0000`
- [ ] Set Primary Keys (AutoNumber)

### Data Entry
- [ ] Import data using IMPORT_DATA_GUIDE.md OR enter manually
- [ ] Enter minimum 10 Members records
- [ ] Enter minimum 10 Classes records
- [ ] Enter minimum 5 Instructors records
- [ ] Verify InstructorID values match in Classes table (1-5)
- [ ] Import order: Instructors → Members → Classes

### Relationships
- [ ] Create relationship: Instructors → Classes
- [ ] Enforce Referential Integrity
- [ ] Cascade Update Related Fields
- [ ] Save relationship diagram

### Final Checks
- [ ] All naming conventions correct (PascalCase)
- [ ] No spaces in field/table names
- [ ] Database saved with appropriate name
- [ ] Test Input Mask works correctly

## Question 2: Answers and Screenshots

### Written Answers (No Screenshots)
- [ ] 2.1: Explain three tables (function & purpose) - 6 marks - 📄 WRITTEN ONLY
- [ ] 2.2: Describe six data types - 6 marks - 📄 WRITTEN ONLY

### Screenshots Required ⚠️
- [ ] 2.3: 📸 Relationship diagram with referential integrity - 5 marks
- [ ] 2.4: 📸 Query - Instructors sorted by Specialty (descending) - 4 marks
- [ ] 2.5: 📸 Tabular form - Members with Arial Black 24pt header - 4 marks
- [ ] 2.6: 📸 Report - Classes with no grouping levels - 5 marks

### PDF Creation
- [ ] Add cover page with your details
- [ ] Include all answers (2.1, 2.2)
- [ ] Insert all screenshots with captions
- [ ] Ensure PDF is clear and readable
- [ ] Save as PDF format

## Submission
- [ ] Access database (.accdb) file ready
- [ ] PDF document ready
- [ ] Files NOT in a zip folder
- [ ] Upload separately to Colcampus
- [ ] Verify upload was successful

## Common Issues to Avoid
- ❌ Don't forget ClassLocation column in Classes table
- ❌ Don't forget Input Mask on PhoneNumber
- ❌ Don't forget Required = Yes on important fields
- ❌ Don't add grouping to Classes report
- ❌ Don't forget Arial Black 24pt on form header
- ❌ Don't forget descending sort on Specialty query
- ❌ Don't zip files - upload separately

## Quick Reference

### Naming Convention
- Tables: PascalCase (Members, Classes, Instructors)
- Fields: PascalCase (MemberID, FirstName, LastName)

### Field Data Types
- IDs: AutoNumber (Primary Key)
- Names/Text: Short Text
- Numbers: Number (Integer or Long Integer)
- Phone: Short Text with Input Mask

### Relationships
- Instructors (1) → Classes (Many)
- Foreign Key: Classes.InstructorID → Instructors.InstructorID

### Screenshot Tools
- Windows: Win + Shift + S (Snipping Tool)
- Save as: PNG or JPG
- Include captions in PDF
- **4 screenshots required** for Question 2 (2.3, 2.4, 2.5, 2.6)

