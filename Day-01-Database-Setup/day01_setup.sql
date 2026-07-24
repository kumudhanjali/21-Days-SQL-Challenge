/* ========================================== */
/* DAY 1: Database & Table Initialization     */
/* ========================================== */

-- 1. Create the database safely
CREATE DATABASE IF NOT EXISTS synexus_db;

-- 2. Select the database
USE synexus_db;

-- 3. Architect the Members table
CREATE TABLE IF NOT EXISTS members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    designation VARCHAR(50) DEFAULT 'Member',
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Architect the Events table
CREATE TABLE IF NOT EXISTS events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(150) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    organizer_id INT,
    FOREIGN KEY (organizer_id) REFERENCES members(member_id)
);

-- 5. Verification (Run this to see your empty tables)
SHOW TABLES;
DESCRIBE members;
DESCRIBE events;
SELECT * FROM members;
SELECT * FROM events;