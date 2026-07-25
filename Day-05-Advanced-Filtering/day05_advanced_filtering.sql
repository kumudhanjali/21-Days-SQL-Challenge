/* ========================================== */
/* DAY 5: Advanced Filtering (LIKE, IN, BETWEEN) */
/* ========================================== */

-- 1. Select the database
USE synexus_db;

-- ==========================================
-- STEP 2: Pattern Matching (LIKE)
-- ==========================================

-- [Write your query below this line]
SELECT first_name, last_name, email
FROM members
WHERE first_name LIKE 'A%';

-- ==========================================
-- STEP 3: Checking Lists (IN)
-- ==========================================
SELECT first_name, last_name, designation
FROM members
WHERE designation IN (
    'CEO',
    'Chief Operating Officer',
    'Chief Technology Officer'
);

-- ==========================================
-- STEP 4: Filtering Ranges (BETWEEN)
-- ==========================================

SELECT event_name, event_date
FROM events
WHERE event_date BETWEEN '2026-09-01' AND '2026-12-31';