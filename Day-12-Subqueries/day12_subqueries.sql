/* ========================================== */
/* DAY 12: Nested Logic (Subqueries)          */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: The Scalar Subquery
-- Question: Which projects have a budget HIGHER than the average budget?
-- 
-- Write a SELECT statement pulling project_name and budget.
-- In your WHERE clause, use a > operator, followed by a set of parentheses ().
-- Inside the parentheses, write a completely separate query that calculates the AVG(budget).
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: The List Subquery (IN)
-- Question: Who are the members that have attended at least one event?
--
-- Write a main query selecting first_name and last_name from the 'members' table.
-- Use the WHERE member_id IN () clause.
-- Inside the parentheses, write a subquery that selects member_id from the 'attendance' table.
-- ==========================================

-- [Write your query below this line]