# 🗓️ Day 13: Clean Multi-Step Logic (CTEs)

## 🎯 Problem Statement
The Core Committee wants to know: *"Which of our members have attended more than 2 technical events?"* You could solve this with a complex `HAVING` clause or a messy nested subquery. But what if you want to use that same "Highly Active Members" list to join against other tables later? 

Instead of writing messy, deeply nested code, we can use a **Common Table Expression (CTE)**. A CTE acts like a temporary, virtual table that exists *only* for the duration of your query. It allows you to break massive problems into small, readable, logical steps.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `WITH`: The keyword that initializes a CTE.
  * Temporary Result Sets: Building virtual tables on the fly.
* **Goal:** Create a CTE that calculates member attendance, and then query that virtual table to find highly active members.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure your `members`, `events`, and `attendance` tables have enough data (at least one member should have attended 2 or more events).

**Step 2: The Core Query (The Foundation)**
Before we build a CTE, we need the logic. Write a standard query using an `INNER JOIN` between `members` and `attendance`. 
* Select the `member_id`, `first_name`, and a `COUNT(scan_id)` aliased as `total_events_attended`.
* Group the results by `member_id` and `first_name`. 

**Step 3: The `WITH` Clause (Building the CTE)**
Take your query from Step 2 and wrap it in a CTE. 
* Start with `WITH MemberAttendance AS (`
* Paste your query inside.
* Close the parentheses `)`.
* Immediately below it, write a simple `SELECT * FROM MemberAttendance;` to prove it works.

**Step 4: Querying the CTE**
Now for the magic. Change your final `SELECT` statement at the bottom of Step 3. 
Instead of selecting everything, write a query that pulls from the `MemberAttendance` CTE, but add a `WHERE` clause to only show members where `total_events_attended > 1`.

### 📊 Expected Output for Step 4
By breaking it into steps, your final query cleanly reads from your virtual table:

| member_id | first_name | total_events_attended |
|-----------|------------|-----------------------|
| 1         | Akash      | 3                     |
| 3         | Akshay     | 2                     |

## ⚠️ Common Pitfalls & Expected Bugs
* **The "CTE Doesn't Exist" Error:** A CTE is NOT permanent. It only exists for the single `SELECT` statement immediately following it. If you write your CTE, put a semicolon `;`, and then try to query it on line 50, SQL will say the table doesn't exist. The `WITH` block and the final `SELECT` are all one giant statement.
* **Missing Commas for Multiple CTEs:** You can create multiple CTEs in one go (e.g., `WITH Table1 AS (...), Table2 AS (...)`). If you forget the comma between them, the query will crash.

## 🧠 Outcomes & Learnings
* Replaced messy subqueries with clean, readable Common Table Expressions.
* Learned to modularize SQL code by creating temporary, virtual tables.
* Mastered the `WITH` keyword for multi-step data processing.

---

## 📱 LinkedIn Post Template

**Share your progress!** > 
>**Day 13/21 of the SQL Database Challenge! 🚀**
>
> Nested subqueries are powerful, but they can quickly turn into unreadable spaghetti code. Today with @Synexus, I upgraded my architecture by learning CTEs (Common Table Expressions).
>
> Using the `WITH` clause, I learned how to create temporary, virtual tables that only exist for the lifespan of a single query. By breaking down complex logic into step-by-step CTEs, I calculated member event turnout and filtered for highly active community members without writing messy, deeply nested code.
>
> Clean code isn't just for Python or JavaScript—it applies to SQL too!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic