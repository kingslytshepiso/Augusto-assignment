# Question 2: Answers Template
**Student Name:** [Your Name]  
**Student Number:** [Your Number]  
**Course:** HCLT108-1  
**Date:** [Date]

---

## 2.1 Explain the function and purpose of the three main tables (6 marks)

### Members Table

**Function:**
The Members table serves as a repository for storing comprehensive personal information and membership details of all individuals registered with the fitness centre. It captures essential demographic data, contact information, and membership classification for each member.

**Purpose:**
This table enables the fitness centre to maintain an organized member database for various operational purposes including:
- Customer relationship management (CRM)
- Communication through email and phone
- Membership tier tracking (Premium, Standard, Basic)
- Billing and payment processing
- Member service and support
- Membership analytics and reporting

---

### Instructors Table

**Function:**
The Instructors table maintains detailed records of all fitness instructors employed by or affiliated with the fitness centre. It stores professional information including personal details, areas of specialization, and contact information.

**Purpose:**
This table supports the operational management of instructors by:
- Tracking instructor profiles and qualifications
- Matching instructor specialties to appropriate classes
- Managing instructor assignments to classes
- Facilitating communication with instructors
- Supporting human resources and scheduling functions
- Ensuring appropriate instructor-class pairing based on expertise

---

### Classes Table

**Function:**
The Classes table contains comprehensive information about all fitness classes offered at the centre, including class details, scheduling information, capacity management, location assignments, and instructor linkages.

**Purpose:**
This table serves multiple critical functions:
- Class scheduling and timetable management
- Capacity planning and enrollment control
- Resource allocation (location assignments)
- Linking classes to instructors through relationships
- Supporting class registration and booking systems
- Managing class availability and waitlists

---

## 2.2 Describe the first six data types used in MS Access and their functions (6 marks)

### 1. Short Text (Text Data Type)

**Function:**
Short Text is used to store alphanumeric characters and can accommodate up to 255 characters. It is designed for storing text-based information that does not require mathematical operations or extensive formatting.

**Common Uses:**
- Names (first names, last names)
- Addresses
- Email addresses
- Phone numbers
- Product descriptions
- Category labels

**Example:** "John Smith", "123 Main Street", "john@email.com"

---

### 2. Long Text (Memo Data Type)

**Function:**
Long Text can store significantly larger amounts of text data, up to 65,535 characters. It is ideal for storing detailed descriptions, notes, or paragraphs of text that exceed the Short Text limit.

**Common Uses:**
- Detailed product descriptions
- Notes and comments
- Customer feedback
- Medical history notes
- Meeting minutes

**Example:** Detailed class descriptions, member notes, instructor qualifications

---

### 3. Number

**Function:**
The Number data type stores numeric values that can be used in mathematical calculations. It supports various numeric formats including integers, decimals, and can be configured for different precision levels.

**Common Uses:**
- Quantities and counts
- Ages
- Ratings and scores
- Measurement values
- Quantities in inventory

**Example:** 25 (capacity), 10 (class count), 85 (member ID)

---

### 4. Date/Time

**Function:**
Date/Time stores both date and time information in a standardized format. Access automatically formats these values and allows for date/time calculations and sorting.

**Common Uses:**
- Birth dates
- Appointment times
- Transaction dates
- Registration dates
- Schedule times
- Due dates

**Example:** 15/03/2025, 09:00:00 AM

---

### 5. Currency

**Function:**
Currency is specifically designed for monetary values. It stores numbers with four decimal places and automatically formats them as currency, ensuring precision in financial calculations.

**Common Uses:**
- Prices and fees
- Salaries
- Membership costs
- Transaction amounts
- Budget allocations

**Example:** R500.00, R1,250.75

---

### 6. AutoNumber

**Function:**
AutoNumber automatically generates a unique sequential number for each new record. It cannot be manually edited and ensures each record has a unique identifier, making it ideal for primary keys.

**Common Uses:**
- Primary key fields
- Unique record identifiers
- Sequential numbering systems
- Order numbers

**Example:** 1, 2, 3, 4... (automatically assigned)

---

## 2.3 Relationship Diagram Screenshot (5 marks)

**[INSERT SCREENSHOT OF RELATIONSHIP DIAGRAM HERE]**

**Caption:** Figure 1 - Database Relationship Diagram showing referential integrity between Instructors and Classes tables.

**Notes:**
- The relationship demonstrates one-to-many (1 to ∞) relationship
- Instructors.InstructorID is the primary key (one)
- Classes.InstructorID is the foreign key (many)
- Referential integrity is enforced (thick line indicates this)
- This ensures data consistency and prevents orphaned records

---

## 2.4 Query Instructors Table - Screenshot (4 marks)

**[INSERT SCREENSHOT OF QUERY RESULT HERE]**

**Caption:** Figure 2 - Query showing all attributes from Instructors table sorted by Specialty in descending order.

**Query Details:**
- All attributes displayed: InstructorID, FirstName, LastName, Specialty, ContactNumber
- Sorting: Specialty column in descending order (Z to A)
- Query includes all records from Instructors table

---

## 2.5 Tabular Form - Members Table Screenshot (4 marks)

**[INSERT SCREENSHOT OF TABULAR FORM HERE]**

**Caption:** Figure 3 - Tabular form displaying all Members table attributes with Arial Black, size 24 header.

**Form Details:**
- Layout: Tabular
- Header: "Members" in Arial Black, 24pt font
- All attributes visible: MemberID, FirstName, LastName, Email, PhoneNumber, MembershipType
- Multiple records displayed in table format

---

## 2.6 Report - Classes Table Screenshot (5 marks)

**[INSERT SCREENSHOT OF REPORT HERE]**

**Caption:** Figure 4 - Report displaying all Classes table attributes with no grouping levels.

**Report Details:**
- All attributes displayed: ClassID, ClassName, InstructorID, Schedule, Capacity, ClassLocation
- No grouping levels applied
- All records from Classes table included
- Report layout: Tabular format

---

## End of Answers

