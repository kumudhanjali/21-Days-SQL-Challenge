# 🗓️ Day 14: Chaining Logic (Multiple CTEs)

## 🎯 Problem Statement
The Core Committee has requested an advanced telemetry report: *"Show us a list of the 'Super Users'—members who have attended MORE technical events than the overall average."*

Think about the execution steps required:
1. You must calculate how many events *each* member attended.
2. You must calculate the *average* of those attendance counts.
3. You must filter the original list against that average.

Doing this with standard subqueries creates a massive, unreadable block of code. Instead, we can chain multiple Common Table Expressions (CTEs) together, passing data cleanly from one virtual table to the next.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * Chaining CTEs: Using a comma to define multiple virtual tables in a single `WITH` clause.
  * Multi-step data aggregation.
* **Goal:** Architect a two-step CTE to dynamically identify above-average community members.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure your `members`, `events`, and `attendance` tables have a healthy amount of data so averages can be properly calculated.

**Step 2: The First CTE (Member Counts)**
Write a query to calculate how many events each member attended.
* Join `members` and `attendance`.
* Select `member_id`, `first_name`, and `COUNT(scan_id)` aliased as `total_attended`.
* Group by `member_id` and `first_name`.

**Step 3: The Second CTE (The Average)**
Now, start building your `WITH` clause. 
* Wrap Step 2 inside a CTE named `MemberStats`.
* Put a comma `,` immediately after the closing parenthesis `)` of `MemberStats`.
* Define a second CTE named `GlobalAverage`. Inside it, write a simple query that selects the `AVG(total_attended)` directly FROM your first `MemberStats` CTE!

**Step 4: The Final Query**
Write the final `SELECT` statement at the very bottom.
* Select everything from the `MemberStats` CTE.
* Add a `WHERE` clause: `WHERE total_attended > (SELECT * FROM GlobalAverage)`.

### 📊 Expected Output for Step 4
Your final query dynamically processes all three steps to return only the over-performers:

| member_id | first_name | total_attended |
|-----------|------------|----------------|
| 4         | Jordan     | 5              |
| 7         | Taylor     | 4              |

*(Assuming the global average was calculated to be 2.5 in the background!)*

## ⚠️ Common Pitfalls & Expected Bugs
* **The Missing Comma:** When defining multiple CTEs, you only write the word `WITH` once at the very beginning. You separate the CTEs with a comma. If you write `WITH CTE1 AS (...) WITH CTE2 AS (...)`, SQL will crash!
* **Querying a CTE in a CTE:** You absolutely *can* query your first CTE from inside your second CTE. This is what makes chaining so powerful! Just treat the first CTE as if it were a real, permanent table.

## 🧠 Outcomes & Learnings
* Mastered chaining multiple CTEs to build multi-stage data pipelines.
* Replaced complex, nested mathematical subqueries with readable, step-by-step logic.
* Successfully generated a dynamic "Super User" report based on relative averages.

---

## 📱 LinkedIn Post Template

**Share your progress!** 
> **Day 14/21 of the SQL Database Challenge! 🚀** 
>
>Today with @Synexus, I leveled up my database architecture by chaining multiple Common Table Expressions (CTEs) to solve complex, multi-stage logical problems. 
>
> The challenge was to dynamically identify "Super Users"—members who attend more events than the global average. Instead of writing messy, deeply nested subqueries, I used the `WITH` clause to build a multi-step data pipeline. My first CTE calculated individual attendance, my second CTE calculated the global average from the first, and my final query filtered the results. 
>
> Writing clean, modular SQL code is just as important as writing clean JavaScript or Python! 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic