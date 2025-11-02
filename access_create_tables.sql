-- MS Access Compatible SQL Script
-- Execute this in MS Access Query Design (SQL View)
-- Instructions: Create tab -> Query Design -> Close Show Table dialog -> Design tab -> SQL View

-- Create Instructors Table
CREATE TABLE Instructors (
    InstructorID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Specialty TEXT(100) NOT NULL,
    ContactNumber TEXT(15) NOT NULL
);

-- Create Members Table
CREATE TABLE Members (
    MemberID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Email TEXT(100) NOT NULL,
    PhoneNumber TEXT(15) NOT NULL,
    MembershipType TEXT(20) NOT NULL
);

-- Create Classes Table
CREATE TABLE Classes (
    ClassID AUTOINCREMENT PRIMARY KEY,
    ClassName TEXT(100) NOT NULL,
    InstructorID LONG NOT NULL,
    Schedule TEXT(50) NOT NULL,
    Capacity INTEGER NOT NULL,
    ClassLocation TEXT(100) NOT NULL
);

-- Note: Relationships and field properties (Input Mask, Required) must be set manually
-- in Design View after tables are created.

