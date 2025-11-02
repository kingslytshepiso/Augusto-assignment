-- SQL INSERT Statements for Importing Sample Data into MS Access
-- Execute these in Access SQL View (Create tab → Query Design → SQL View)
-- Run each section separately or all at once

-- ============================================================================
-- INSTRUCTORS TABLE (5 records)
-- ============================================================================
-- Execute these INSERT statements to populate the Instructors table

INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('Sarah', 'Johnson', 'Yoga', '083-555-0123');

INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('Michael', 'Chen', 'CrossFit', '082-555-0234');

INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('Emily', 'Rodriguez', 'Pilates', '084-555-0345');

INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('David', 'Thompson', 'Swimming', '081-555-0456');

INSERT INTO Instructors (FirstName, LastName, Specialty, ContactNumber)
VALUES ('Lisa', 'Anderson', 'Zumba', '085-555-0567');

-- ============================================================================
-- MEMBERS TABLE (12 records)
-- ============================================================================
-- Execute these INSERT statements to populate the Members table
-- Note: PhoneNumber must match Input Mask format: 000-000-0000

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('John', 'Smith', 'john.smith@email.com', '083-111-2222', 'Premium');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Jane', 'Doe', 'jane.doe@email.com', '082-222-3333', 'Standard');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Robert', 'Williams', 'robert.w@email.com', '084-333-4444', 'Premium');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Mary', 'Brown', 'mary.brown@email.com', '081-444-5555', 'Basic');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('James', 'Johnson', 'james.j@email.com', '085-555-6666', 'Standard');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Patricia', 'Miller', 'patricia.m@email.com', '083-666-7777', 'Premium');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Michael', 'Davis', 'michael.d@email.com', '082-777-8888', 'Basic');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Linda', 'Garcia', 'linda.g@email.com', '084-888-9999', 'Standard');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('William', 'Rodriguez', 'william.r@email.com', '081-999-0000', 'Premium');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Elizabeth', 'Martinez', 'elizabeth.m@email.com', '085-000-1111', 'Standard');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Richard', 'Anderson', 'richard.a@email.com', '083-111-2233', 'Premium');

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, MembershipType)
VALUES ('Jennifer', 'Taylor', 'jennifer.t@email.com', '082-222-3344', 'Basic');

-- ============================================================================
-- CLASSES TABLE (12 records)
-- ============================================================================
-- Execute these INSERT statements to populate the Classes table
-- IMPORTANT: InstructorID values (1-5) must exist in Instructors table first!
-- If Instructors were auto-numbered differently, adjust these values accordingly

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Morning Yoga Flow', 1, 'Mon/Wed/Fri 06:00-07:00', 20, 'Studio A');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Intensive CrossFit', 2, 'Tue/Thu 18:00-19:30', 15, 'Gym Floor');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Pilates Core Strength', 3, 'Mon/Wed 12:00-13:00', 12, 'Studio B');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Swimming Lessons - Beginner', 4, 'Sat 09:00-10:00', 10, 'Swimming Pool');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Zumba Dance Party', 5, 'Fri 19:00-20:00', 25, 'Studio A');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Advanced CrossFit', 2, 'Mon/Wed/Fri 17:00-18:30', 12, 'Gym Floor');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Yoga Relaxation', 1, 'Tue/Thu 19:00-20:00', 18, 'Studio B');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Swimming Lessons - Advanced', 4, 'Sat 10:00-11:00', 8, 'Swimming Pool');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Pilates Flexibility', 3, 'Tue/Thu 10:00-11:00', 15, 'Studio B');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Zumba Latin Fusion', 5, 'Sat 11:00-12:00', 20, 'Studio A');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('Yoga Power Flow', 1, 'Wed 17:00-18:30', 16, 'Studio A');

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation)
VALUES ('CrossFit Endurance', 2, 'Sat 08:00-09:30', 10, 'Gym Floor');

-- ============================================================================
-- END OF INSERT STATEMENTS
-- ============================================================================
-- 
-- IMPORTANT NOTES:
-- 1. Execute in order: Instructors → Members → Classes
-- 2. InstructorID values assume Instructors were inserted in order (1-5)
-- 3. If InstructorID values are different, update Classes INSERT statements
-- 4. AutoNumber fields (ID fields) are NOT included in INSERT statements
-- 5. Text values with special characters must be in single quotes
-- 6. PhoneNumber format must match Input Mask: 000-000-0000

