/* ========================================== */
/* DAY 7: Data Relationships & Foreign Keys   */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2 & 3: Architect the Attendance Table
-- Write a CREATE TABLE statement for the 'attendance' table.
-- Include scan_id, member_id, event_id, and scanned_at.
-- CRITICAL: Add the two FOREIGN KEY constraints at the bottom of the table definition!
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 4: Test Referential Integrity
-- First, run these selects to find a valid member_id and event_id
SELECT member_id, first_name FROM members;
SELECT event_id, event_name FROM events;

-- Now, write an INSERT INTO statement for the 'attendance' table using 
-- a VALID member_id and a VALID event_id.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- BONUS: The Integrity Crash
-- Try inserting an attendance record using a member_id that you know DOES NOT exist (e.g., 9999).
-- Watch MySQL block the action and throw a Foreign Key Constraint error!
-- ==========================================

-- [Write your intentional error query below this line]