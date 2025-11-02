# Question 2: Detailed Instructions

**Total: 30 Marks**

This guide provides step-by-step instructions for completing all parts of Question 2.

---

## 📋 Question 2 Breakdown

| Question | Type | Marks | Screenshot? |
|----------|------|-------|-------------|
| 2.1 | Written | 6 | ❌ No |
| 2.2 | Written | 6 | ❌ No |
| 2.3 | Screenshot | 5 | ✅ **YES** |
| 2.4 | Screenshot | 4 | ✅ **YES** |
| 2.5 | Screenshot | 4 | ✅ **YES** |
| 2.6 | Screenshot | 5 | ✅ **YES** |

---

## 2.1 Explain the Function and Purpose of Three Tables (6 marks)

### 📄 **WRITTEN ANSWER - NO SCREENSHOT NEEDED**

**Requirement:** Write explanations for each of the three main tables.

### Template Structure:

**Members Table:**
- **Function:** [What the table stores/does]
- **Purpose:** [Why it's needed/benefits]

**Instructors Table:**
- **Function:** [What the table stores/does]
- **Purpose:** [Why it's needed/benefits]

**Classes Table:**
- **Function:** [What the table stores/does]
- **Purpose:** [Why it's needed/benefits]

### Sample Answer Format:
See `QUESTION2_ANSWER_TEMPLATE.md` for complete examples.

---

## 2.2 Describe the First Six Data Types in MS Access (6 marks)

### 📄 **WRITTEN ANSWER - NO SCREENSHOT NEEDED**

**Requirement:** Describe the first six data types and their functions.

### Six Data Types:
1. **Short Text** (formerly Text)
2. **Long Text** (formerly Memo)
3. **Number**
4. **Date/Time**
5. **Currency**
6. **AutoNumber**

### For Each Data Type, Describe:
- **Function:** What it does/stores
- **Use:** When to use it/common applications

### Sample Answer Format:
See `QUESTION2_ANSWER_TEMPLATE.md` for complete examples.

---

## 2.3 Create Relationship Diagram Screenshot (5 marks)

### 📸 **SCREENSHOT REQUIRED**

**Action:** Create and screenshot the relationship diagram showing referential integrity.

### Step-by-Step Instructions:

1. **Open Relationships Window**
   - Open your Access database
   - Click **"Database Tools"** tab
   - Click **"Relationships"** button

2. **Add Tables to Relationship Window**
   - Click **"Show Table"** if dialog doesn't appear automatically
   - Add all three tables:
     - **Members**
     - **Instructors**
     - **Classes**
   - Close the "Show Table" dialog

3. **Create the Relationship**
   - Drag **InstructorID** from **Instructors** table
   - Drop it onto **InstructorID** in **Classes** table
   - The "Edit Relationships" dialog will appear

4. **Set Referential Integrity**
   - ✅ **Check "Enforce Referential Integrity"**
   - ✅ **Check "Cascade Update Related Fields"** (optional but recommended)
   - Click **"Create"**

5. **Verify the Relationship**
   - You should see a line connecting the two tables
   - The line should be **thick** (indicating referential integrity)
   - It should show **1** on Instructors side and **∞** (many) on Classes side

6. **Arrange Tables for Screenshot**
   - Drag tables to arrange them clearly
   - Ensure all field names are visible
   - Make sure relationship line is clearly visible

7. **Take Screenshot** ⚠️
   - Use **Windows Snipping Tool** (Win + Shift + S)
   - Or press **Print Screen** and paste into image editor
   - Ensure screenshot shows:
     - ✅ All three table names
     - ✅ Field names visible
     - ✅ Relationship line between Instructors and Classes
     - ✅ Thick line indicating referential integrity
     - ✅ 1 to ∞ notation visible

8. **Save Screenshot**
   - Save as PNG or JPG
   - Name it: `Q2.3_RelationshipDiagram.png`
   - Include in your PDF later

### What Must Be Visible in Screenshot:
- [x] Members table (all fields visible)
- [x] Instructors table (all fields visible)
- [x] Classes table (all fields visible)
- [x] Relationship line between Instructors and Classes
- [x] Thick line indicating referential integrity
- [x] 1 (one) and ∞ (many) symbols on relationship line

---

## 2.4 Query Instructors Table - Screenshot (4 marks)

### 📸 **SCREENSHOT REQUIRED**

**Action:** Create a query showing all Instructors table attributes, sorted by Specialty in descending order.

### Step-by-Step Instructions:

1. **Create New Query**
   - Click **"Create"** tab
   - Click **"Query Design"**

2. **Add Instructors Table**
   - In "Show Table" dialog, select **"Instructors"**
   - Click **"Add"**
   - Click **"Close"**

3. **Add All Fields**
   - Double-click each field to add to query:
     - InstructorID
     - FirstName
     - LastName
     - Specialty
     - ContactNumber
   - OR double-click the asterisk (*) to add all fields

4. **Set Sort Order**
   - Click on the **"Specialty"** column in the query grid
   - In the **"Sort"** row, select **"Descending"**
   - This will sort from Z to A alphabetically

5. **Run the Query**
   - Click the **"Run"** button (red exclamation mark) or press **Ctrl + R**
   - The query results will display in Datasheet View

6. **Verify Results**
   - ✅ All 5 attributes are visible
   - ✅ Specialty column is sorted in descending order (Z to A)
   - ✅ All instructor records are shown

7. **Take Screenshot** ⚠️
   - While in Datasheet View showing results
   - Use **Windows Snipping Tool** (Win + Shift + S)
   - Capture the entire query result window
   - Ensure screenshot shows:
     - ✅ All 5 columns: InstructorID, FirstName, LastName, Specialty, ContactNumber
     - ✅ Specialty column sorted descending (check first few rows)
     - ✅ All records visible (scroll if needed to show all)

8. **Save the Query (Optional)**
   - Close the query
   - Save as: "InstructorsQuery_SortedBySpecialty"
   - Or don't save (not required)

9. **Save Screenshot**
   - Save as PNG or JPG
   - Name it: `Q2.4_Query_Instructors.png`
   - Include in your PDF later

### What Must Be Visible in Screenshot:
- [x] Column headers showing all 5 attributes
- [x] Data sorted by Specialty (descending - Z to A)
- [x] All or most records visible
- [x] Query result clearly shown

---

## 2.5 Create Tabular Form for Members Table - Screenshot (4 marks)

### 📸 **SCREENSHOT REQUIRED**

**Action:** Create a tabular form showing all Members table attributes with header in Arial Black, size 24.

### Step-by-Step Instructions:

1. **Start Form Wizard**
   - Click **"Create"** tab
   - Click **"Form Wizard"**

2. **Select Table and Fields**
   - In "Tables/Queries" dropdown, select **"Members"**
   - Move all fields to Selected Fields:
     - MemberID
     - FirstName
     - LastName
     - Email
     - PhoneNumber
     - MembershipType
   - Click **"Next"**

3. **Choose Layout**
   - Select **"Tabular"** layout
   - Click **"Next"**

4. **Choose Style (Optional)**
   - Select any style you prefer
   - Click **"Next"**

5. **Name the Form**
   - Title: **"Members"**
   - Select **"Modify the form's design"**
   - Click **"Finish"**

6. **Edit Header Formatting** ⚠️ **CRITICAL STEP**
   - The form will open in Design View
   - Click on the **"Members"** header label (in the Form Header section)
   - In the **Home** tab or **Format** tab, find Font settings
   - Set **Font:** **Arial Black**
   - Set **Font Size:** **24**
   - The header should now be large and in Arial Black

7. **Save the Form**
   - Press **Ctrl + S** to save
   - Or click the Save icon

8. **Switch to Form View**
   - Click **"View"** → **"Form View"**
   - Or click the Form View icon at bottom right

9. **Verify Form Display**
   - ✅ Header says "Members" in Arial Black, size 24
   - ✅ All 6 attributes are visible as columns
   - ✅ Records are displayed in tabular (table) format
   - ✅ Multiple records visible (you may need to scroll)

10. **Take Screenshot** ⚠️
    - While in Form View
    - Use **Windows Snipping Tool** (Win + Shift + S)
    - Capture the form showing:
      - ✅ Header in Arial Black, 24pt (verify it's large and bold)
      - ✅ All column headers
      - ✅ Multiple records in tabular layout
    - If header is cut off, scroll up or resize window

11. **Save Screenshot**
    - Save as PNG or JPG
    - Name it: `Q2.5_Form_Members.png`
    - Include in your PDF later

### What Must Be Visible in Screenshot:
- [x] Form header "Members" in **Arial Black, size 24** (must be large and bold)
- [x] All 6 column headers visible
- [x] Tabular layout (records in rows, like a table)
- [x] Multiple member records visible

### ⚠️ Common Mistakes:
- ❌ Using wrong font (must be **Arial Black**, not Arial)
- ❌ Wrong font size (must be **24**, not 12 or 14)
- ❌ Using Form View instead of Form View showing header
- ❌ Header not visible in screenshot

---

## 2.6 Create Report for Classes Table - Screenshot (5 marks)

### 📸 **SCREENSHOT REQUIRED**

**Action:** Create a report showing all Classes table attributes with **NO grouping levels**.

### Step-by-Step Instructions:

1. **Start Report Wizard**
   - Click **"Create"** tab
   - Click **"Report Wizard"**

2. **Select Table and Fields**
   - In "Tables/Queries" dropdown, select **"Classes"**
   - Move all fields to Selected Fields:
     - ClassID
     - ClassName
     - InstructorID
     - Schedule
     - Capacity
     - ClassLocation
   - Click **"Next"**

3. **Add Grouping Levels** ⚠️ **CRITICAL: SKIP THIS!**
   - **DO NOT add any grouping levels**
   - Click **"Next"** immediately without selecting anything

4. **Choose Sort Order (Optional)**
   - You can sort by any field if desired (optional)
   - Or click **"Next"** without sorting

5. **Choose Layout**
   - Select **"Tabular"** or **"Columnar"** (Tabular recommended)
   - Click **"Next"**

6. **Choose Style (Optional)**
   - Select any style you prefer
   - Click **"Next"**

7. **Name the Report**
   - Title: **"Classes Report"**
   - Select **"Preview the report"** or **"Modify the report's design"**
   - Click **"Finish"**

8. **Verify No Grouping**
   - The report should show all records without grouping headers
   - Each record should appear as a row (in tabular) or block (in columnar)
   - **There should be NO group headers** like "Group by ClassID" or similar

9. **View in Print Preview (Recommended)**
   - Right-click the report → **"Print Preview"**
   - Or click **"Print Preview"** in the Home tab
   - This shows how it will look when printed/saved

10. **Take Screenshot** ⚠️
    - While in Print Preview or Report View
    - Use **Windows Snipping Tool** (Win + Shift + S)
    - Capture the report showing:
      - ✅ All 6 attributes/columns visible
      - ✅ Report title visible
      - ✅ **NO grouping headers** (very important!)
      - ✅ Multiple class records visible
    - Scroll if needed to show all records

11. **Save Screenshot**
    - Save as PNG or JPG
    - Name it: `Q2.6_Report_Classes.png`
    - Include in your PDF later

### What Must Be Visible in Screenshot:
- [x] Report title "Classes Report"
- [x] All 6 column headers: ClassID, ClassName, InstructorID, Schedule, Capacity, ClassLocation
- [x] **NO grouping levels** (no group headers above records)
- [x] Multiple class records visible
- [x] Report layout clear and readable

### ⚠️ Common Mistakes:
- ❌ Accidentally adding grouping levels (must have **NONE**)
- ❌ Screenshot showing grouping headers (wrong - remove grouping)
- ❌ Not showing all fields
- ❌ Report not in Print Preview or clear view

---

## 📸 Screenshot Best Practices

### General Tips:
1. **Use Windows Snipping Tool**
   - Press **Win + Shift + S**
   - Select area to capture
   - Save immediately

2. **Or Use Print Screen**
   - Press **Print Screen** key
   - Paste into Paint or image editor
   - Crop to show only relevant area
   - Save as PNG or JPG

3. **Quality Requirements:**
   - Text must be **clear and readable**
   - No blurry or pixelated images
   - Sufficient resolution (at least 800px width recommended)

4. **What to Include:**
   - All required elements visible
   - No important parts cut off
   - Window titles/headers visible when relevant

5. **File Naming:**
   - Use descriptive names: `Q2.3_RelationshipDiagram.png`
   - Keep names short but clear
   - Use consistent naming format

---

## 📄 Creating Your PDF Document

### Suggested Structure:

1. **Cover Page**
   - Your Name
   - Student Number
   - Course Code: HCLT108-1
   - Date
   - Assignment Title

2. **Question 2.1** (6 marks)
   - Written explanation of three tables
   - No screenshot

3. **Question 2.2** (6 marks)
   - Written description of six data types
   - No screenshot

4. **Question 2.3** (5 marks) ⚠️
   - Insert screenshot here
   - Add caption: "Figure 1: Relationship Diagram showing referential integrity"

5. **Question 2.4** (4 marks) ⚠️
   - Insert screenshot here
   - Add caption: "Figure 2: Query result showing Instructors sorted by Specialty (Descending)"

6. **Question 2.5** (4 marks) ⚠️
   - Insert screenshot here
   - Add caption: "Figure 3: Tabular form of Members table with Arial Black 24pt header"

7. **Question 2.6** (5 marks) ⚠️
   - Insert screenshot here
   - Add caption: "Figure 4: Report of Classes table with no grouping levels"

### PDF Formatting Tips:
- Use clear headings for each question
- Add captions below each screenshot
- Ensure all screenshots are properly sized (not too small or too large)
- Check that all text is readable
- Use consistent font and formatting

---

## ✅ Final Checklist for Question 2

### Written Answers:
- [ ] 2.1: Explanation of three tables complete (6 marks)
- [ ] 2.2: Description of six data types complete (6 marks)

### Screenshots:
- [ ] 2.3: Relationship diagram screenshot taken and saved
- [ ] 2.4: Query result screenshot taken and saved
- [ ] 2.5: Form screenshot taken and saved
- [ ] 2.6: Report screenshot taken and saved

### Screenshot Quality Check:
- [ ] All screenshots are clear and readable
- [ ] All required elements visible in each screenshot
- [ ] Form header shows Arial Black, 24pt
- [ ] Report shows NO grouping levels
- [ ] Query shows descending sort
- [ ] Relationship shows referential integrity

### PDF Document:
- [ ] Cover page included
- [ ] All written answers included
- [ ] All 4 screenshots inserted
- [ ] Captions added below screenshots
- [ ] Document properly formatted
- [ ] PDF saved and ready to upload

---

**Total Marks: 30**

For complete answer templates, see: `QUESTION2_ANSWER_TEMPLATE.md`
