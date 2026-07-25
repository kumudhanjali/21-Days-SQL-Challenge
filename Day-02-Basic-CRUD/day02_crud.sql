/* ========================================== */
/* DAY 2: Inserting and Selecting Data        */
/* ========================================== */

-- 1. Always tell MySQL which database we are working in!
USE synexus_db;

-- 2. Insert our Core Committee into the members table.
-- Notice how we list the columns first, then provide the matching VALUES.
-- We skip 'member_id' and 'joined_at' because they automatically generate!
INSERT INTO members (first_name, last_name, email, designation) 
VALUES 
('Aarav', 'Patel', 'aarav@vertex.com', 'CEO'), 
('Meera', 'Nair', 'meera@vertex.com', 'Chief Operating Officer'), 
('Kabir', 'Joshi', 'kabir@vertex.com', 'Chief Technology Officer'), 
('Riya', 'Kapoor', 'riya@vertex.com', 'Chief Marketing Officer')

-- 3. Insert some upcoming community events.
-- Dates must follow the YYYY-MM-DD format inside single quotes.
INSERT INTO events (event_name, event_date, location)
VALUES
('Web Development Bootcamp', '2026-08-15', 'Main Campus Lab 1'),
('Blockchain & Web3 Hackathon', '2026-09-10', 'Auditorium'),
('Open Source Contribution Drive', '2026-09-25', 'Virtual');

-- ==========================================
-- VIEWING OUR DATA (THE READ OPERATION)
-- ==========================================

-- 4. View EVERYTHING in the members table using the wildcard (*)
SELECT * FROM members;

-- 5. View EVERYTHING in the events table
SELECT * FROM events;

-- 6. View ONLY specific columns (This is faster and cleaner for large databases)
-- Let's just get a clean list of names and their roles.
SELECT first_name, last_name, designation 
FROM members;
SELECT event_name, location
FROM events;