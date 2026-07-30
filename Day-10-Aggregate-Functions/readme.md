# 🗓️ Day 10: Crunching the Numbers (Aggregate Functions)

## 🎯 Problem Statement
A list of data is not the same as a data *insight*. If the Synexus Core Committee asks, "How many members do we have?", returning a list of 500 names and making them count it manually is terrible engineering. 

We need the database to do the math for us. Today, we learn how to use SQL's built-in calculators—known as Aggregate Functions—to condense thousands of rows into single, powerful metrics.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** 
  * `COUNT()`: Counts the number of rows.
  * `SUM()`: Adds numerical values together.
  * `AVG()`: Calculates the average of numerical values.
  * `MIN()` / `MAX()`: Finds the lowest and highest values.
* **Goal:** Create a new `projects` table and write queries that generate high-level mathematical summaries.

## 📝 Task Requirements

**Step 1: Setup & The New Table**
Use `synexus_db;`. Inside your scaffold file today, there is a pre-written script. Run it! It will create a new `projects` table (with columns for `budget` and `team_size`) and insert some dummy data so we have numbers to calculate.

**Step 2: Counting Records (`COUNT`)**
Write a query using `COUNT(*)` to find the total number of members currently registered in the `members` table.
* *Beginner Tip: You can alias the result so the column name looks clean, e.g., `SELECT COUNT(*) AS total_members`.*

**Step 3: Finding Extremes (`MIN` & `MAX`)**
The Core Committee wants to know the scope of our projects. Write a single query that selects the `MIN(budget)` and the `MAX(budget)` from the `projects` table.

**Step 4: Totals and Averages (`SUM` & `AVG`)**
Write a query to calculate the `SUM` of all project budgets (how much money we are spending in total) and the `AVG` (average) team size across all projects.

**Step 5: The Mini-Dashboard**
Aggregate functions can be combined! Write a single query against the `projects` table that calculates:
1. The total number of projects (`COUNT`).
2. The total combined budget (`SUM`).
3. The average team size (`AVG`).

### 📊 Expected Output for Step 5
When you combine aggregates correctly, you condense the entire table into a single row of metrics:

| total_projects | total_budget | average_team_size |
|----------------|--------------|-------------------|
| 4              | 14500.00     | 5.2500            |

## ⚠️ Common Pitfalls & Expected Bugs
* **Mixing Aggregates with Normal Columns:** If you write `SELECT project_name, SUM(budget) FROM projects;`, SQL will crash. Why? Because `SUM(budget)` tries to crush the whole table into ONE row, but `project_name` is trying to show EVERY row. You cannot mix condensed data with flat data unless you use `GROUP BY` (which we learn tomorrow!).
* **COUNT(*) vs COUNT(column_name):** `COUNT(*)` counts every row, even if it has missing data (`NULL`). `COUNT(location)` will ONLY count rows where the location is actually filled out.

## 🧠 Outcomes & Learnings
* Learned to offload mathematical calculations directly to the database engine.
* Mastered the 5 core Aggregate Functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
* Understood the restriction against mixing aggregated and non-aggregated columns.

---

## 📱 LinkedIn Post Template

**Share your progress!** 

> **Day 10/21 of the SQL Database Challenge! 🚀**
>
> Data is good. Insights are better. Today with @Synexus, I started crunching the numbers using SQL Aggregate Functions.
>
> Instead of exporting data to Excel to do math, I wrote queries utilizing `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX` to perform high-speed calculations directly inside the database engine. I successfully generated a one-row mini-dashboard calculating our total community projects, combined budgets, and average team sizes.
>
> Standard, not a trend. The logic, not a language. 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic