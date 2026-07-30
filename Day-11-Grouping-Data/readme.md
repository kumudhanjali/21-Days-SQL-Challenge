# 🗓️ Day 11: Categorizing Metrics (GROUP BY & HAVING)

## 🎯 Problem Statement
Aggregate functions like `COUNT()` and `SUM()` are powerful, but by default, they summarize the entire table. If we want to know how many members hold the 'Core Leadership' role versus the 'General Member' role, we need to tell SQL to split the data into categories *before* it starts counting. 

Furthermore, once we group this data, we might want to filter the results (e.g., "Only show me designations that have more than 2 people"). Today, we master `GROUP BY` and its dedicated filtering partner, `HAVING`.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `GROUP BY`: Splitting data into categorical buckets.
  * `HAVING`: Filtering aggregated data (because `WHERE` cannot filter aggregates).
* **Goal:** Generate categorized reports for member designations and event attendance.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure you have a good mix of members with different designations, and some attendance records for different events.

**Step 2: Basic Grouping (`GROUP BY`)**
Write a query to find out how many members we have for each designation.
* Select the `designation` column and a `COUNT(*)` column.
* Group the results by `designation`.

**Step 3: Grouping Across Tables (JOIN + GROUP BY)**
The Core Committee wants an attendance report: "How many people showed up to each event?"
* Write a query that joins the `events` table to the `attendance` table.
* Select the `event_name` and a `COUNT(*)` of the attendees.
* Group the results by `event_name`.

**Step 4: Filtering Groups (`HAVING`)**
Now, the committee only wants to see highly successful events. Take your exact query from Step 3, but add a clause to only show events where the attendee count is **greater than 1**.
* *Beginner Tip: You CANNOT use `WHERE count > 1`. The `WHERE` clause runs before the grouping happens. To filter after grouping, you must use `HAVING`.*

### 📊 Expected Output for Step 3
When you combine an `INNER JOIN` with `GROUP BY`, your result should look like this clean report:

| event_name                   | total_attendees |
|------------------------------|-----------------|
| Web Development Bootcamp     | 12              |
| Blockchain & Web3 Hackathon  | 8               |
| QR Attendance Tracker Launch | 3               |

## ⚠️ Common Pitfalls & Expected Bugs
* **The "Unaggregated Column" Crash:** If you write `SELECT first_name, designation, COUNT(*) FROM members GROUP BY designation;`, SQL will throw an error. Why? Because you crushed the table down to just a few designations, but SQL doesn't know *which* `first_name` to display for that group! **Rule:** If a column is in your `SELECT` statement, it MUST either be inside an aggregate function (like `COUNT`) OR listed in your `GROUP BY` clause.
* **WHERE vs. HAVING:** * `WHERE` filters individual rows *before* they get grouped.
  * `HAVING` filters the mathematical results *after* they are grouped. 

## 🧠 Outcomes & Learnings
* Mastered the `GROUP BY` clause to generate categorized metrics.
* Combined Table Joins with Aggregate Functions for advanced reporting.
* Understood the strict architectural difference between `WHERE` and `HAVING`.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 11/21 of the SQL Database Challenge! 🚀**
>
> Phase 1 is officially complete! Today with @Synexus, I bridged the gap between raw data and business intelligence by mastering `GROUP BY` and `HAVING`.
>
> Instead of just finding total numbers, I wrote queries to split the Synexus database into categories—calculating member counts per designation and attendee turnouts per event. I also learned the critical execution difference between `WHERE` (filtering raw rows) and `HAVING` (filtering grouped aggregates).
>
> Tomorrow, we enter Phase 2: Advanced Execution & Optimization!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic