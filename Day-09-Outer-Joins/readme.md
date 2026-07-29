# 🗓️ Day 9: Inclusive Data (LEFT & RIGHT JOINS)

## 🎯 Problem Statement
The Core Committee wants a master list of **ALL** members and their attendance records. If a member hasn't attended anything yet, their name should still appear on the report, but with a blank space next to it. 

An `INNER JOIN` deletes members without matches from the result set. To solve this, we must use an **Outer Join**. Today, we master the `LEFT JOIN`, which tells SQL: *"Give me everything from the first table, and only the matching data from the second table."*

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `LEFT JOIN`: Keeps all records from the left table.
  * `RIGHT JOIN`: Keeps all records from the right table.
  * The "Orphan Record" Trick: Combining a `LEFT JOIN` with `IS NULL`.
* **Goal:** Generate an inclusive master report and identify inactive members.

## 📝 Task Requirements

**Step 1: Setup & Data Check**
Use `synexus_db;`. Ensure you have at least one member in your `members` table who has **never** been inserted into the `attendance` table. (If everyone has attended an event, write a quick `INSERT` to add a brand new member).

**Step 2: The `LEFT JOIN`**
Write a query that selects `first_name`, `last_name`, and `scanned_at`. 
* Use `FROM members m` (This makes `members` the "Left" table).
* Use a `LEFT JOIN` to connect the `attendance a` table.
* Look closely at your results grid. You should see your new member, but their `scanned_at` column will say `NULL`!

**Step 3: Finding Inactive Members (The Interview Classic)**
This is one of the most common SQL interview questions in the industry: *"How do you find users who have never done an action?"*
* Copy your `LEFT JOIN` query from Step 2.
* Add a `WHERE` clause at the bottom: `WHERE a.scan_id IS NULL;`
* This filters the list to show *only* the members who have zero attendance records!

**Step 4: The `RIGHT JOIN`**
A `RIGHT JOIN` is the exact same logic, just mirrored. It keeps everything from the second table you type. 
* Write a query starting with `FROM attendance a` (Left).
* `RIGHT JOIN` it to `events e` (Right). 
* *Note: `LEFT JOIN` is the industry standard. Most developers just flip the order of their tables rather than using a `RIGHT JOIN`, but you need to know how it works!*

### 📊 Expected Output for Step 2
When you execute your `LEFT JOIN` correctly, it should look like this:

| first_name | last_name | scanned_at          |
|------------|-----------|---------------------|
| Marcus     | Thorne    | 2026-08-15 10:00:00 |
| Sarah      | Jenkins   | 2026-08-15 10:05:00 |
| Liam       | Vance     | NULL                | 

*(Notice how Liam is included, even though he has no scan data!)*

## ⚠️ Common Pitfalls & Expected Bugs
* **Left vs. Right Confusion:** Which table is "Left"? It is simply the table you type first (immediately after the `FROM` keyword). The table you type after the `JOIN` keyword is the "Right" table. 
* **Accidentally making it an INNER JOIN:** If you write a `LEFT JOIN`, but then add a `WHERE` clause that filters the right table (e.g., `WHERE a.scanned_at > '2026-01-01'`), it will accidentally delete all the `NULL` rows, turning your `LEFT JOIN` back into an `INNER JOIN`! 

## 🧠 Outcomes & Learnings
* Mastered the `LEFT JOIN` to keep primary data intact regardless of relationships.
* Learned the industry-standard technique for finding missing/orphan records using `LEFT JOIN` + `IS NULL`.
* Understood the visual flow of table order in SQL queries.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 9/21 of the SQL Database Challenge! 🚀**
>
> `INNER JOIN` is great, but it hides missing data. Today with @Synexus, I leveled up to Outer Joins!
>
> By utilizing the `LEFT JOIN`, I was able to generate a master report that included ALL community members, even if they had never attended an event (leaving their attendance data as `NULL`). 
>
> I also tackled a classic data engineering interview question: "How do you find users who have never performed an action?" By combining a `LEFT JOIN` with a `WHERE id IS NULL` clause, I successfully isolated the inactive members. 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic