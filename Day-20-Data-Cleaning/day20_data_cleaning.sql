/* ========================================== */
/* DAY 20: Data Cleaning & Formatting         */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Setup - Injecting Messy Data
-- RUN THIS BLOCK FIRST! 
-- We are adding a member with lowercase names and no designation.
-- ==========================================
INSERT INTO members (first_name, last_name, email, designation) 
VALUES ('casey', 'smith', 'casey.messy@synexus.com', NULL);


-- ==========================================
-- STEP 2 & 3: String Manipulation & COALESCE
-- Write a query targeting the 'members' table.
-- 1. Use CONCAT() to merge first_name, a space ' ', and last_name.
-- 2. Wrap that CONCAT inside an UPPER() function. Alias it as 'full_name'.
-- 3. Select the designation column, but wrap it in COALESCE() so that 
--    if it is NULL, it prints 'Unassigned' instead. Alias it as 'clean_designation'.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 4: Date Formatting
-- Write a query targeting the 'events' table.
-- Select the event_name.
-- Create a column using YEAR(event_date) aliased as 'event_year'.
-- Create a column using MONTHNAME(event_date) aliased as 'event_month'.
-- ==========================================

-- [Write your query below this line]