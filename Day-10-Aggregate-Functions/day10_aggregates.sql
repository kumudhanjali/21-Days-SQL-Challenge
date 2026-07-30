/* ========================================== */
/* DAY 10: Crunching Numbers (Aggregates)     */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Setup - The Projects Table
-- RUN THIS BLOCK FIRST! 
-- We need some numerical data to practice our math on.
-- ==========================================
CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    budget DECIMAL(10, 2),
    team_size INT
);

INSERT INTO projects (project_name, budget, team_size)
VALUES 
('StoreLane Hyperlocal App', 5000.00, 6),
('Synexus Website V2', 1500.00, 4),
('QR Attendance Tracker', 3000.00, 3),
('Logistics Management System', 5000.00, 8);

-- ==========================================
-- STEP 2: Counting Records (COUNT)
-- Write a query to count the total number of rows in the 'members' table.
-- Alias the result as 'total_members'.
-- ==========================================

-- [Write your query below this line]
SELECT COUNT(*) AS total_members
FROM members;
-- ==========================================
-- STEP 3: Finding Extremes (MIN & MAX)
-- Write a query to find the MIN(budget) and MAX(budget) from the 'projects' table.
-- Alias them as 'lowest_budget' and 'highest_budget'.
-- ==========================================

-- [Write your query below this line]
SELECT
    MIN(budget) AS lowest_budget,
    MAX(budget) AS highest_budget
FROM projects;
-- ==========================================
-- STEP 4: Totals and Averages (SUM & AVG)
-- Write a query to find the SUM of all budgets, and the AVG team_size.
-- Alias them as 'total_budget' and 'average_team_size'.
-- ==========================================

-- [Write your query below this line]
SELECT
    SUM(budget) AS total_budget,
    AVG(team_size) AS average_team_size
FROM projects;


-- ==========================================
-- STEP 5: The Mini-Dashboard
-- Combine COUNT, SUM, and AVG into a single query against the 'projects' table.
-- ==========================================

-- [Write your query below this line]
SELECT
    COUNT(*) AS total_projects,
    SUM(budget) AS total_budget,
    AVG(team_size) AS average_team_size
FROM projects;