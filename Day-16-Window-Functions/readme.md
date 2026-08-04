# 🗓️ Day 16: Analytical Computations (Window Functions & ROW_NUMBER)

## 🎯 Problem Statement
Yesterday, we learned optimization. Today, we tackle a new architectural reporting challenge. The Core Committee needs a comprehensive report listing all projects alongside their budgets. However, right next to each project, they also want to see a running total of the budget spent so far, and a unique, sequential row number assigned to each project based on its budget size.

If you try to do this with `GROUP BY`, you will crush the individual project rows out of existence. We need a way to look at individual rows while calculating metrics across a "window" of data. Today, we solve this using Window Functions.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * Window Functions: Calculating values across a set of table rows related to the current row.
  * The `OVER()` clause: Defining the boundary or "window" of data.
  * `ROW_NUMBER()`: Generating an ordered sequence number dynamically.
* **Goal:** Calculate sequential analytics across the `projects` table without losing individual row detail.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure your `projects` table contains at least 4 distinct entries.

**Step 2: Sequential Numbering (`ROW_NUMBER`)**
Write a query to list all projects, sorted by their budget from highest to lowest. Add an analytical column called `project_rank_id` that uses `ROW_NUMBER() OVER (...)` to dynamically stamp a sequential number (`1`, `2`, `3`, etc.) on each row based on that budget sorting.

**Step 3: Calculating a Running Total**
Write an advanced analytical query that displays `project_name` and `budget`. Add a third column called `running_total_budget` that uses `SUM(budget) OVER (...)` to calculate an ongoing, cumulative total of budgets as you move down the rows.
* *Beginner Tip: Inside the `OVER()` clause, you must specify an `ORDER BY project_id` so SQL knows the exact order in which to add up the running total!*

### 📊 Expected Output for Step 2
When executed properly, your individual project records remain intact, but are decorated with a clean sequence window metric:

| project_rank_id | project_name                 | budget  |
|-----------------|------------------------------|---------|
| 1               | StoreLane Hyperlocal App     | 5000.00 |
| 2               | Logistics Management System  | 5000.00 |
| 3               | QR Attendance Tracker        | 3000.00 |
| 4               | Synexus Website V2           | 1500.00 |

## ⚠️ Common Pitfalls & Expected Bugs
* **Mixing Up GROUP BY and Window Functions:** A `GROUP BY` clause physically collapses your rows. A Window Function preserves every single individual row while doing its math in an adjacent cell. Do not add a `GROUP BY` clause at the bottom of your query when utilizing window functions!
* **Empty `OVER()` Clauses:** If you leave the `OVER()` clause completely empty like `SUM(budget) OVER ()`, SQL will simply calculate the grand total of the entire table and print that exact same large number on every single row instead of making a cumulative running total.

## 🧠 Outcomes & Learnings
* Mastered analytical calculations without destroying individual row integrity.
* Understood how the `OVER()` clause defines operational data windows on the fly.
* Successfully generated sequential indexes and cumulative totals using raw SQL window mechanics.

---

## 📱 LinkedIn Post Template

**Share your progress!** 
> **Day 16/21 of the SQL Database Challenge! 🚀** 
>
> Today with @Synexus, I unlocked the world of advanced data analytics by mastering Window Functions and the `OVER()` clause!
>
> Standard aggregate functions like `SUM()` or `COUNT()` push you into collapsing your entire dataset using `GROUP BY`. But real enterprise reporting often demands calculating deep analytical metrics—like running totals or dynamic row positioning—while keeping individual row visibility completely intact. I successfully implemented `ROW_NUMBER() OVER()` to generate on-the-fly rankings based on project scales, and orchestrated a sliding cumulative budget tracker natively inside the database.
>
> Moving past flat summaries into multi-dimensional analysis!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic