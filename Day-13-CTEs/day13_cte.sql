/* ========================================= */
/* DAY 13: Clean Logic with CTEs (WITH)      */
/* ========================================= */

-- 1. Select the database
USE synexus_db;

-- =========================================
-- STEP 2: The Core Query
-- Write a query that joins 'members' and 'attendance'.
-- Select member_id, first_name, and COUNT(scan_id) AS total_events_attended.
-- Group by member_id and first_name.
-- Test this to make sure it works before moving to Step 3!
-- =========================================

SELECT
    m.member_id,
    m.first_name,
    COUNT(a.scan_id) AS total_events_attended
FROM members m
INNER JOIN attendance a
    ON m.member_id = a.member_id
GROUP BY
    m.member_id,
    m.first_name;

-- =========================================
-- STEP 3 & 4: The CTE (Common Table Expression)
-- Wrap your query from Step 2 inside a CTE named 'MemberAttendance'.
-- Then, write a final SELECT statement that queries this new virtual table
-- to find members who have attended MORE THAN 1 event.
--
-- Syntax Help:
-- WITH CTE_Name AS (
--     ... your query here ...
-- )
-- SELECT * FROM CTE_Name WHERE ...;
-- =========================================

WITH MemberAttendance AS
(
    SELECT
        m.member_id,
        m.first_name,
        COUNT(a.scan_id) AS total_events_attended
    FROM members m
    INNER JOIN attendance a
        ON m.member_id = a.member_id
    GROUP BY
        m.member_id,
        m.first_name
)

SELECT
    member_id,
    first_name,
    total_events_attended
FROM MemberAttendance
WHERE total_events_attended > 1;