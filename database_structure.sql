-- Database Structure for Fitness Centre Management System
-- This SQL script can be used as a reference for creating tables in MS Access

-- Table: Members
CREATE TABLE Members (
    MemberID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Email TEXT(100) NOT NULL,
    PhoneNumber TEXT(15) NOT NULL,
    MembershipType TEXT(20) NOT NULL
);

-- Table: Instructors
CREATE TABLE Instructors (
    InstructorID AUTOINCREMENT PRIMARY KEY,
    FirstName TEXT(50) NOT NULL,
    LastName TEXT(50) NOT NULL,
    Specialty TEXT(100) NOT NULL,
    ContactNumber TEXT(15) NOT NULL
);

-- Table: Classes
CREATE TABLE Classes (
    ClassID AUTOINCREMENT PRIMARY KEY,
    ClassName TEXT(100) NOT NULL,
    InstructorID LONG NOT NULL,
    Schedule TEXT(50) NOT NULL,
    Capacity INTEGER NOT NULL,
    ClassLocation TEXT(100) NOT NULL,
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

