/* ========================================== */
/* DAY 15: Optimizing Performance (Indexing)  */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: Peek Under the Hood (EXPLAIN)
-- Write an EXPLAIN statement to see how the database engine 
-- searches for a member by their email address.
-- Replace 'fictional_email@domain.com' with any placeholder string.
-- ==========================================

-- [Write your query below this line]
EXPLAIN
SELECT *
FROM members
WHERE email = 'test@email.com';
-- ==========================================
-- STEP 3: Create the Index
-- Write a query to create an INDEX named 'idx_members_email' 
-- on the 'email' column of the 'members' table.
-- ==========================================
CREATE INDEX idx_members_email
ON members(email);
-- [Write your query below this line]

-- ==========================================
-- STEP 4: Verify the Optimization
-- Copy and paste your exact EXPLAIN query from Step 2 below.
-- Execute it and observe the structural changes in the execution plan grid!
-- ==========================================

-- [Write your query below this line]
EXPLAIN
SELECT *
FROM members
WHERE email = 'test@email.com';