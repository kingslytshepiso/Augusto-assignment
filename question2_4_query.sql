-- QUESTION 2.4: Query Instructors Table Sorted by Specialty (Descending)
-- Requirements:
-- - Show all attributes from Instructors table
-- - Sort by Specialty in descending order (Z to A)
-- - 4 marks

SELECT InstructorID, FirstName, LastName, Specialty, ContactNumber
FROM Instructors
ORDER BY Specialty DESC;

-- Alternative: If you want to use * to select all fields:
-- SELECT *
-- FROM Instructors
-- ORDER BY Specialty DESC;

