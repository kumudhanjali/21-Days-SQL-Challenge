/* ========================================== */
/* DAY 18: Query Encapsulation (Views)        */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: Create the View
-- Use the CREATE VIEW syntax to build 'vw_master_contact_list'.
-- Paste your UNION ALL query from Day 17 immediately underneath the 'AS' keyword.
-- ==========================================

-- [Write your query below this line]
CREATE VIEW vw_master_contact_list AS

SELECT
    first_name,
    last_name,
    email,
    'Member' AS contact_type
FROM members

UNION ALL

SELECT
    first_name,
    last_name,
    email,
    'Guest Speaker' AS contact_type
FROM guest_speakers;
-- ==========================================
-- STEP 3: Querying the View
-- Now, retrieve the data just like a normal table!
-- Write a basic SELECT * statement targeting your new view.
-- ==========================================

-- [Write your query below this line]
SELECT *
FROM vw_master_contact_list;
-- ==========================================
-- STEP 4: Filtering the View
-- Write a query targeting your view, but add a WHERE clause 
-- to only show the 'Guest Speaker' rows.
-- ==========================================

-- [Write your query below this line]
SELECT *
FROM vw_master_contact_list
WHERE contact_type = 'Guest Speaker';