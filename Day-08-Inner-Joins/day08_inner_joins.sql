/* ========================================== */
/* DAY 8: Stitching Data (INNER JOIN)         */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: The Two-Table Join
-- Write a query that joins 'members' and 'attendance'.
-- Select first_name, last_name, and scanned_at.
-- Hint: Use the ON clause to connect them via member_id.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: Table Aliasing
-- Rewrite the exact same query above, but give your tables aliases.
-- For example: FROM members m INNER JOIN attendance a
-- Make sure to update your SELECT and ON clauses to use the aliases!
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 4: The Three-Table Join (The Master Report)
-- We need the Event Name! 
-- Start with your query from Step 3. 
-- Add a second INNER JOIN below it to connect the 'events' table to the 'attendance' table.
-- Select first_name, last_name, event_name, and scanned_at.
-- ==========================================

-- [Write your query below this line]