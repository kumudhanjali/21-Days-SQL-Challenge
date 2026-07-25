/* ========================================== */
/* DAY 3: Updating and Deleting Data          */
/* ========================================== */

USE synexus_db;

-- ==========================================
-- 1. ADDING TEST DATA
-- Let's add some test records so we can safely modify and delete them.
-- ==========================================
INSERT INTO members (first_name, last_name, email, designation) 
VALUES ('Alex', 'Turner', 'alex.test@synexus.com', 'Member');

INSERT INTO events (event_name, event_date, location)
VALUES ('Temporary Test Event', '2026-12-31', 'Room 101');

-- Let's look at the data before we change it
SELECT * FROM members WHERE first_name = 'Alex';
SELECT * FROM events WHERE event_name = 'Temporary Test Event';

-- ==========================================
-- 2. UPDATING DATA (The 'U' in CRUD)
-- Scenario: Alex Turner just got promoted to 'Lead Developer'
-- ==========================================
-- NOTE: If you get Error 1175 (Safe Updates), run this line first:
-- SET SQL_SAFE_UPDATES = 0;

UPDATE members 
SET designation = 'Lead Developer'
WHERE first_name = 'Alex' AND last_name = 'Turner';

-- Let's verify the change!
SELECT first_name, designation
FROM members
WHERE first_name = 'Alex';
SELECT *
FROM members
WHERE last_name = 'Turner';

-- ==========================================
-- 3. DELETING DATA (The 'D' in CRUD)
-- Scenario: The temporary test event got cancelled.
-- ==========================================
DELETE FROM events
WHERE event_name = 'Temporary Test Event';
SELECT *
FROM events;

-- Let's verify it is gone! (This should return an empty grid)
SELECT * FROM events WHERE event_name = 'Temporary Test Event';

-- Re-enable Safe Updates if you turned it off!
-- SET SQL_SAFE_UPDATES = 1;