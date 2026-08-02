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