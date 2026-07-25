/* ======================================= */
/* DAY 4: Filtering, Sorting, and Limiting  */
/* ======================================= */

-- 1. Select the database
USE synexus_db;

-- ========================================
-- STEP 2: Basic Filtering
-- Write a query to select all members whose designation is exactly 'Member'
-- ========================================

SELECT first_name, last_name
FROM members
WHERE designation = 'Member';


-- ========================================
-- STEP 3: Multi-Condition Filtering
-- Write a query to select all events that are active (is_active = 1)
-- AND are scheduled for a date greater than '2026-01-01'
-- ========================================

SELECT event_name, event_date, location
FROM events
WHERE is_active = 1
AND event_date > '2026-01-01';


-- ========================================
-- STEP 4: Sorting Data
-- Write a query to select all members, sorted alphabetically by their last_name
-- ========================================

SELECT first_name, last_name, designation
FROM members
ORDER BY last_name;


-- ========================================
-- STEP 5: Chaining Clauses (Order By + Limit)
-- Write a query to find the SINGLE newest member to join the platform.
-- ========================================

SELECT first_name, last_name, joined_at
FROM members
ORDER BY joined_at DESC
LIMIT 1;