/* ========================================== */
/* DAY 9: Inclusive Data (LEFT & RIGHT JOIN)  */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Data Check
-- Run this quickly to make sure you have a member who hasn't attended anything.
-- If you don't, INSERT a new member before continuing!
-- ==========================================
SELECT * FROM members;
SELECT * FROM attendance;


-- ==========================================
-- STEP 2: The LEFT JOIN
-- Write a query that joins 'members' (Left table) to 'attendance' (Right table).
-- Use a LEFT JOIN.
-- Select first_name, last_name, and scanned_at.
-- ==========================================

-- [Write your query below this line]
SELECT
    m.first_name,
    m.last_name,
    a.scanned_at
FROM members m
LEFT JOIN attendance a
ON m.member_id = a.member_id;
-- ==========================================
-- STEP 3: Finding Inactive Members (The Interview Trick)
-- Copy your LEFT JOIN query from Step 2.
-- Add a WHERE clause to filter for rows where the attendance scan_id IS NULL.
-- This will reveal ONLY the members who have never attended an event.
-- ==========================================

-- [Write your query below this line]
SELECT
    m.first_name,
    m.last_name,
    a.scanned_at
FROM members m
LEFT JOIN attendance a
ON m.member_id = a.member_id
WHERE a.scan_id IS NULL;
-- ==========================================
-- STEP 4: The RIGHT JOIN
-- Start FROM attendance (Left table) and RIGHT JOIN to events (Right table).
-- Select the event_name and the scanned_at timestamp.
-- (This asks: Give me all events, even if nobody attended them yet!)
-- ==========================================

-- [Write your query below this line]
SELECT
    e.event_name,
    a.scanned_at
FROM attendance a
RIGHT JOIN events e
ON a.event_id = e.event_id;