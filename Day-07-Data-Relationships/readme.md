# 🗓️ Day 7: Data Relationships & Foreign Keys

## 🎯 Problem Statement
Synexus hosted an AI Hackathon, and we need to record which members attended. Beginners often try to add an `attendees` column to the `events` table and stuff it with a comma-separated list of names (e.g., "Sarah, Marcus, Liam"). **Never do this.** It violates the first rule of database normalization, making data impossible to search or update efficiently.

Instead, we engineer a **Junction Table** (or Mapping Table). We will create a new `attendance` table that links a specific `member_id` to a specific `event_id` using **Foreign Keys**. 

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * The Junction Table (Many-to-Many Relationships).
  * `FOREIGN KEY`: A column that references a Primary Key in another table.
  * `REFERENCES`: The keyword that enforces the connection.
  * Referential Integrity: SQL's built-in rule that stops you from adding attendance for a member that doesn't exist!
* **Goal:** Architect the `attendance` table to securely link the `members` and `events` tables.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure you have at least one member and one event in your database from previous days.

**Step 2: Architect the Attendance Table**
Create a new table named `attendance` with the following schema:

| Column Name | Data Type | Constraint |
| :--- | :--- | :--- |
| `scan_id` | INT | AUTO_INCREMENT PRIMARY KEY |
| `member_id` | INT | NOT NULL |
| `event_id` | INT | NOT NULL |
| `scanned_at` | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP |

**Step 3: Enforce the Foreign Keys**
Inside your `CREATE TABLE` statement for `attendance`, you must define the relationships.
* Add a constraint making `member_id` a Foreign Key that references the `member_id` column in the `members` table.
* Add a constraint making `event_id` a Foreign Key that references the `event_id` column in the `events` table.
* *Beginner Tip: The syntax looks like this: `FOREIGN KEY (your_column) REFERENCES other_table(their_column)`.*

**Step 4: Test Referential Integrity**
Write an `INSERT INTO` statement to add a record to the `attendance` table. 
* Look at your `members` table and pick a real `member_id` (e.g., 1).
* Look at your `events` table and pick a real `event_id` (e.g., 2).
* Insert them!

## ⚠️ Common Pitfalls & Expected Bugs
* **Data Type Mismatch:** A Foreign Key MUST have the exact same data type as the Primary Key it is pointing to. If `member_id` is an `INT` in the `members` table, it MUST be an `INT` in the `attendance` table. 
* **The Integrity Crash:** If you try to insert an attendance record for `member_id = 999`, but Member 999 does not exist in the `members` table, SQL will throw a massive red error and block the insertion. This is called a **Foreign Key Constraint Failure**. It is a feature, not a bug! It prevents "ghost data" from ruining your system.

## 🧠 Outcomes & Learnings
* Understood how to map Many-to-Many relationships using Junction Tables.
* Mastered Foreign Keys to link tables together.
* Experienced the power of SQL's automated Referential Integrity checks.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 7/21 of the SQL Database Challenge! 🚀**
>
> We have officially entered the "Relational" part of Relational Databases! Today with @Synexus, I moved past flat tables and engineered Data Relationships.
>
> I built an `attendance` junction table to map community members to specific technical events. By utilizing `FOREIGN KEY` constraints, I linked the tables together and enabled SQL's strict Referential Integrity—meaning the database will automatically block any attempt to log attendance for a member or event that doesn't actually exist.
>
> No messy comma-separated lists. Just pure, normalized data architecture. 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic