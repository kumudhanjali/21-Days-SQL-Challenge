/* ========================================== */
/* DAY 6: Missing Data & Conditional Logic    */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Injecting Missing Data
-- Let's add an event without a location so we have something to find!
-- ==========================================
INSERT INTO events (event_name, event_date) 
VALUES ('Secret Pop-up Hackathon', '2026-11-01');
-- Notice we didn't mention 'location' at all. SQL will insert NULL automatically.


-- ==========================================
-- STEP 2: Handling NULLs (IS NULL)
-- Write a query to find all events where the location is NULL.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: Complete Records (IS NOT NULL)
-- Write a query to find all members who DO have a designation assigned.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 4: The CASE Statement (IF/ELSE Logic)
-- Write a query to select first_name and designation.
-- Create a new column called 'role_category' using a CASE statement:
-- WHEN designation is 'Founder' OR 'Chief Strategic Officer' THEN 'Core Leadership'
-- ELSE 'General Member'
-- Don't forget to END your CASE statement!
-- ==========================================

-- [Write your query below this line]