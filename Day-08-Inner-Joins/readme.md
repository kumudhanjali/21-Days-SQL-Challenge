# 🗓️ Day 8: Stitching Data Together (INNER JOIN)

## 🎯 Problem Statement
Our data is perfectly normalized. `members` holds names, `events` holds dates, and `attendance` holds the links. But the Core Committee needs a readable report showing exactly *who* attended *which* event. To generate this, we must temporarily merge these three tables together into a single, human-readable result set. 

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `INNER JOIN`: Merging tables where a match exists in BOTH.
  * `ON`: The clause that tells SQL *how* the tables are connected.
  * Table Aliasing (`AS`): Creating short nicknames for tables to save typing.
* **Goal:** Write multi-table queries to generate a readable attendance report.

## 📝 Task Requirements

**Step 1: Setup & Data Check**
Begin with `USE synexus_db;`. Ensure your `attendance` table has at least 3 or 4 records in it from yesterday. 

**Step 2: The Two-Table Join**
Write a query to join the `members` table with the `attendance` table. 
* Select the member's `first_name` and `last_name`, along with the `scanned_at` timestamp.
* *Beginner Tip: You must tell SQL exactly how they connect using the `ON` clause: `ON members.member_id = attendance.member_id`.*

**Step 3: Table Aliasing (Making it clean)**
Typing out full table names gets messy. Rewrite your query from Step 2, but this time, give your tables short aliases (e.g., `FROM members m`). Then, use those aliases in your `SELECT` and `ON` clauses (e.g., `SELECT m.first_name`).

**Step 4: The Three-Table Join (The Full Report)**
Now for the real magic. Write a single query that joins `members` to `attendance`, and then joins `attendance` to `events`.
* Retrieve the member's `first_name`, `last_name`, the `event_name`, and the `scanned_at` time. 
* Use table aliases (`m`, `a`, `e`) to keep your code clean!

## ⚠️ Common Pitfalls & Expected Bugs
* **The "Ambiguous Column" Error:** If both your `members` table and `attendance` table have a column named `member_id`, and you just type `SELECT member_id`, SQL will crash. It doesn't know *which* table to pull it from! You must specify: `SELECT m.member_id`.
* **How INNER JOIN works:** An `INNER JOIN` is exclusive. If a member is in the database but has *never* attended an event, they will completely disappear from your results today. (We will learn how to fix that tomorrow!)

## 🧠 Outcomes & Learnings
* Mastered the `INNER JOIN` to reconstruct normalized data.
* Understood how to chain multiple joins together to traverse a database.
* Learned Table Aliasing to write cleaner, more professional queries.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 8/21 of the SQL Database Challenge! 🚀**
>
> Normalizing data is great for storage, but humans need readable reports. Today with @Synexus, I unlocked the true power of relational databases: The `INNER JOIN`.
>
> I successfully wrote multi-table queries that stitched together our `members`, `events`, and `attendance` tables. Instead of looking at raw ID numbers, I generated a clean, readable report showing exactly who attended which event. I also learned to use Table Aliases to keep complex code clean and prevent ambiguous column errors. 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic