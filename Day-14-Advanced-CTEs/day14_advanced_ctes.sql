/* ========================================== */
/* DAY 14: Chaining Logic (Multiple CTEs)     */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2, 3 & 4: The Multi-CTE Pipeline
-- 
-- Syntax Help:
-- WITH FirstCTE AS (
--     ... logic to count events per member ...
-- ),
-- SecondCTE AS (
--     ... logic to find the AVG() from FirstCTE ...
-- )
-- SELECT * FROM FirstCTE WHERE count > (SELECT * FROM SecondCTE);
-- ==========================================

-- [Write your query below this line]
WITH MemberStats AS (
    SELECT
        m.member_id,
        m.first_name,
        COUNT(a.scan_id) AS total_attended
    FROM members m
    JOIN attendance a
        ON m.member_id = a.member_id
    GROUP BY
        m.member_id,
        m.first_name
),
GlobalAverage AS (
    SELECT
        AVG(total_attended) AS avg_attendance
    FROM MemberStats
)
SELECT *
FROM MemberStats
WHERE total_attended >
(
    SELECT avg_attendance
    FROM GlobalAverage
);