/* ========================================== */
/* DAY 11: Categorizing Metrics (GROUP BY)    */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: Basic Grouping (GROUP BY)
-- Write a query to count how many members belong to each designation.
-- Select 'designation' and the COUNT of members.
-- Group the results by designation.
-- ==========================================

-- [Write your query below this line]
SELECT designation, COUNT(*) AS total_members
FROM members
GROUP BY designation;
-- ==========================================
-- STEP 3: Grouping Across Tables (JOIN + GROUP BY)
-- Write a query to find the total number of attendees for each event.
-- Join 'events' and 'attendance'.
-- Select 'event_name' and the COUNT of attendees (alias it as 'total_attendees').
-- Group the results by event_name.
-- ==========================================

-- [Write your query below this line]
SELECT e.event_name,
       COUNT(a.member_id) AS total_attendees
FROM events e
INNER JOIN attendance a
ON e.event_id = a.event_id
GROUP BY e.event_name;
-- ==========================================
-- STEP 4: Filtering Groups (HAVING)
-- Copy your exact query from Step 3.
-- Add a HAVING clause at the very bottom to only show events 
-- that have MORE THAN 1 attendee.
-- ==========================================

-- [Write your query below this line]
SELECT e.event_name,
       COUNT(a.member_id) AS total_attendees
FROM events e
INNER JOIN attendance a
ON e.event_id = a.event_id
GROUP BY e.event_name
HAVING COUNT(a.member_id) > 1;