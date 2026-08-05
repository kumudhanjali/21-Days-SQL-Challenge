/* ========================================== */
/* DAY 17: Stacking Data (UNION & UNION ALL)  */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 1: Setup - The Guest Speakers Table
-- RUN THIS BLOCK FIRST! 
-- We need a second group of people to merge with our members.
-- ==========================================
CREATE TABLE IF NOT EXISTS guest_speakers (
    speaker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    expertise VARCHAR(100)
);

INSERT INTO guest_speakers (first_name, last_name, email, expertise)
VALUES 
('Taylor', 'Brooks', 'taylor@industry.com', 'Cloud Architecture'),
('Riley', 'Chen', 'riley@data.com', 'Machine Learning'),
('Morgan', 'Reed', 'morgan@synexus.com', 'Community Building'); 
-- Note: Morgan is intentionally placed here as a duplicate (they are also a member!)

-- ==========================================
-- STEP 2: The Standard UNION
-- Write a query to combine first_name, last_name, and email 
-- from BOTH the 'members' table and the 'guest_speakers' table.
-- Use the standard UNION keyword between the two SELECT statements.
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 3: Keeping Duplicates (UNION ALL)
-- Copy your exact query from Step 2, but change the keyword to UNION ALL.
-- Execute it and observe how Morgan's email now appears twice!
-- ==========================================

-- [Write your query below this line]



-- ==========================================
-- STEP 4: Labeling the Source
-- Rewrite your UNION ALL query. 
-- In the first SELECT, add a static string: 'Member' AS contact_type
-- In the second SELECT, add a static string: 'Guest Speaker' AS contact_type
-- ==========================================

-- [Write your query below this line]