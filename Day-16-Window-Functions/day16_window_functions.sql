/* ========================================== */
/* DAY 16: Analytical Computations (OVER)     */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: Sequential Numbering (ROW_NUMBER)
-- Write a query selecting project_name and budget from the 'projects' table.
-- Add an analytical column that generates a sequential row number 
-- ordered by budget DESC.
-- 
-- Syntax Help: ROW_NUMBER() OVER (ORDER BY column_name DESC) AS your_alias
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: Cumulative Analytics (Running Total)
-- Write a query to select project_name and budget.
-- Create a running total column using SUM(budget) OVER (ORDER BY project_id ASC).
-- Alias this new analytical column as 'running_total_budget'.
-- ==========================================

-- [Write your query below this line]