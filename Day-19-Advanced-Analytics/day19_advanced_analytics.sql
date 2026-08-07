/* ========================================== */
/* DAY 19: Handling Ties & Time Travel        */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Setup - Ensuring we have a tie!
-- Let's make sure we have two projects with the exact same budget.
-- ==========================================
INSERT INTO projects (project_name, budget, team_size)
VALUES ('Synexus Hyperlocal App', 5000.00, 6)
ON DUPLICATE KEY UPDATE budget = 5000.00;

INSERT INTO projects (project_name, budget, team_size)
VALUES ('Logistics Management System', 5000.00, 8)
ON DUPLICATE KEY UPDATE budget = 5000.00;


-- ==========================================
-- STEP 2: RANK vs. DENSE_RANK
-- Write a query selecting project_name and budget.
-- Create three analytical columns comparing the methods:
-- 1. ROW_NUMBER() OVER (ORDER BY budget DESC)
-- 2. RANK() OVER (ORDER BY budget DESC)
-- 3. DENSE_RANK() OVER (ORDER BY budget DESC)
-- Observe how they handle the two $5000 projects!
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: Time Travel (LAG)
-- Write a query selecting project_name and budget.
-- Create a new column using LAG(budget) OVER (ORDER BY budget DESC).
-- Alias this column as 'previous_higher_budget'.
-- Notice how the first row will have a NULL value!
-- ==========================================

-- [Write your query below this line]