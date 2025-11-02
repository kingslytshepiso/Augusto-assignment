-- Batch Insert for Classes Table (All 12 records in one execution)
-- IMPORTANT: Run this AFTER importing Instructors table
-- Copy and paste this entire block into Access SQL View and run once

INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Morning Yoga Flow', 1, 'Mon/Wed/Fri 06:00-07:00', 20, 'Studio A');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Intensive CrossFit', 2, 'Tue/Thu 18:00-19:30', 15, 'Gym Floor');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Pilates Core Strength', 3, 'Mon/Wed 12:00-13:00', 12, 'Studio B');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Swimming Lessons - Beginner', 4, 'Sat 09:00-10:00', 10, 'Swimming Pool');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Zumba Dance Party', 5, 'Fri 19:00-20:00', 25, 'Studio A');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Advanced CrossFit', 2, 'Mon/Wed/Fri 17:00-18:30', 12, 'Gym Floor');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Yoga Relaxation', 1, 'Tue/Thu 19:00-20:00', 18, 'Studio B');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Swimming Lessons - Advanced', 4, 'Sat 10:00-11:00', 8, 'Swimming Pool');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Pilates Flexibility', 3, 'Tue/Thu 10:00-11:00', 15, 'Studio B');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Zumba Latin Fusion', 5, 'Sat 11:00-12:00', 20, 'Studio A');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('Yoga Power Flow', 1, 'Wed 17:00-18:30', 16, 'Studio A');
INSERT INTO Classes (ClassName, InstructorID, Schedule, Capacity, ClassLocation) VALUES ('CrossFit Endurance', 2, 'Sat 08:00-09:30', 10, 'Gym Floor');

