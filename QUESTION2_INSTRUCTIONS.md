# Question 2 Instructions and Template

## 2.1 Explain the function and purpose of the three main tables (6 marks)

### Template Answer:

**Members Table:**
- **Function**: Stores personal information and membership details of all fitness centre members
- **Purpose**: Tracks member demographics, contact information, and membership tier/status for customer management, communication, and membership billing

**Instructors Table:**
- **Function**: Maintains records of all fitness instructors employed by the centre
- **Purpose**: Stores instructor profiles including their specializations and contact details, enabling the centre to assign appropriate instructors to specific classes based on expertise

**Classes Table:**
- **Function**: Contains information about fitness classes offered at the centre
- **Purpose**: Manages class schedules, capacity limits, locations, and instructor assignments, allowing for efficient class planning, enrollment management, and resource allocation

---

## 2.2 Describe the first six data types used in MS Access and their functions (6 marks)

### Template Answer:

1. **Short Text** (formerly Text)
   - **Function**: Stores alphanumeric characters up to 255 characters
   - **Use**: Names, addresses, descriptions, or any text-based data that doesn't require calculations

2. **Long Text** (formerly Memo)
   - **Function**: Stores large amounts of text up to 65,535 characters
   - **Use**: Detailed descriptions, notes, comments, or paragraphs of text

3. **Number**
   - **Function**: Stores numeric values for mathematical calculations
   - **Use**: Quantities, counts, percentages, integers, or decimal numbers that need arithmetic operations

4. **Date/Time**
   - **Function**: Stores dates and times in a specific format
   - **Use**: Birth dates, appointment times, transaction dates, or any time-based information

5. **Currency**
   - **Function**: Stores monetary values with automatic formatting and precision
   - **Use**: Prices, fees, salaries, or any financial amounts requiring accurate decimal handling

6. **AutoNumber**
   - **Function**: Automatically generates unique sequential numbers for each record
   - **Use**: Primary keys, unique identifiers, or record numbers that must be automatically assigned

---

## 2.3 Create Relationship Diagram Screenshot (5 marks)

### Steps:
1. Open your Access database
2. Click "Database Tools" tab → "Relationships"
3. All tables should be visible (Members, Instructors, Classes)
4. Ensure there is a relationship line between:
   - Instructors.InstructorID → Classes.InstructorID
5. The relationship should show:
   - One-to-Many (1 to ∞) notation
   - Referential integrity enforced (thick line)
6. Take a screenshot (Windows: Snipping Tool or Win+Shift+S)
7. Ensure the screenshot is clear and shows:
   - Table names
   - Field names
   - Relationship lines
   - Referential integrity indicators

---

## 2.4 Query Instructors Table - Screenshot (4 marks)

### Steps:
1. Click "Create" tab → "Query Design"
2. Add "Instructors" table
3. Double-click all fields: InstructorID, FirstName, LastName, Specialty, ContactNumber
4. Click on "Specialty" column
5. In "Sort" row, select "Descending"
6. Click "Run" (red exclamation mark)
7. Verify:
   - All attributes are visible
   - Specialty column is sorted in descending order (Z to A)
8. Take a screenshot
9. Close and save as "InstructorsQuery_SortedBySpecialty"

---

## 2.5 Create Tabular Form for Members Table - Screenshot (4 marks)

### Steps:
1. Click "Create" tab → "Form Wizard"
2. Select "Members" table
3. Move all fields to Selected Fields: MemberID, FirstName, LastName, Email, PhoneNumber, MembershipType
4. Click "Next"
5. Choose "Tabular" layout
6. Click "Next"
7. Choose a style (any)
8. Click "Next"
9. Title: "Members"
10. Select "Modify the form's design"
11. Click "Finish"
12. In Design View:
    - Click on the "Members" header label
    - Change Font: Arial Black
    - Change Font Size: 24
    - Save the form
13. Switch to Form View
14. Take a screenshot showing:
    - Arial Black, size 24 header
    - All attributes visible
    - Tabular layout

---

## 2.6 Create Report for Classes Table - Screenshot (5 marks)

### Steps:
1. Click "Create" tab → "Report Wizard"
2. Select "Classes" table
3. Move all fields to Selected Fields: ClassID, ClassName, InstructorID, Schedule, Capacity, ClassLocation
4. Click "Next"
5. **IMPORTANT**: Do NOT add any grouping levels - Click "Next" immediately
6. Choose sorting (optional) - Click "Next"
7. Choose layout (Tabular or Columnar) - Click "Next"
8. Choose a style - Click "Next"
9. Title: "Classes Report"
10. Select "Modify the report's design" or "Preview the report"
11. Click "Finish"
12. **Verify**: No grouping levels are present
13. Take a screenshot showing:
    - All attributes
    - Report layout
    - No grouping headers

---

## Screenshot Tips:
- Use Windows Snipping Tool (Win+Shift+S) or Print Screen
- Ensure screenshots are clear and readable
- Save screenshots as PNG or JPG files
- Include them in your PDF document
- Add captions to each screenshot (e.g., "Figure 1: Relationship Diagram")

---

## PDF Document Structure:

### Suggested Format:
1. **Cover Page**: Name, Student Number, Course Code, Date
2. **Question 2.1**: Explanation of three tables (6 marks)
3. **Question 2.2**: Description of six data types (6 marks)
4. **Question 2.3**: Relationship diagram screenshot with caption (5 marks)
5. **Question 2.4**: Query screenshot with caption (4 marks)
6. **Question 2.5**: Form screenshot with caption (4 marks)
7. **Question 2.6**: Report screenshot with caption (5 marks)

### Total: 30 marks

