# 🗓️ Day 19: Handling Ties & Time Travel (RANK & LAG)

## 🎯 Problem Statement
The Core Committee is reviewing project allocations. They want a report that ranks projects by their budget from highest to lowest. However, we have a tie: The "Synexus App" and the "Logistics System" both have a budget of $5,000. 

If we use our old `ROW_NUMBER()` function, it will unfairly rank one as 1st and the other as 2nd. We need a true analytical ranking system. Furthermore, the committee wants to see the budget difference between a project and the one ranked immediately below it. To do this, we have to make SQL "look backward" at previous rows.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `RANK()`: Assigns a rank, but skips numbers after a tie (e.g., 1, 1, 3).
  * `DENSE_RANK()`: Assigns a rank and does NOT skip numbers (e.g., 1, 1, 2).
  * `LAG()`: Retrieves data from a previous row in the same result set.
* **Goal:** Generate a flawless ranking report handling data ties, and compute row-to-row differences.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Inside your scaffold file, there is a quick `INSERT` statement to ensure we have a perfect tie in our `projects` table for testing.

**Step 2: RANK vs. DENSE_RANK**
Write a query to select `project_name` and `budget`. 
* Add a column using `RANK() OVER (ORDER BY budget DESC)`.
* Add another column using `DENSE_RANK() OVER (ORDER BY budget DESC)`.
* *Observe the difference in the output grid when the two $5,000 projects tie!*

**Step 3: Time Travel (`LAG`)**
Write a query to select `project_name` and `budget`, ordered by budget descending.
* Add an analytical column using `LAG(budget) OVER (ORDER BY budget DESC)`. Alias it as `previous_higher_budget`.
* This will pull the budget of the project immediately above the current one and place it right next to it, allowing you to easily calculate differences!

### 📊 Expected Output for Step 2
Understanding the difference between the three ranking functions is a classic data engineering interview test. Notice how the numbers behave after the tie:

| project_name                 | budget  | row_number | rank_val | dense_rank_val |
|------------------------------|---------|------------|----------|----------------|
| Synexus Hyperlocal App       | 5000.00 | 1          | 1        | 1              |
| Logistics Management System  | 5000.00 | 2          | 1        | 1              |
| QR Attendance Tracker        | 3000.00 | 3          | 3        | 2              |
| Synexus Website V2           | 1500.00 | 4          | 4        | 3              |

## ⚠️ Common Pitfalls & Expected Bugs
* **Skipped Ranks:** If you use standard `RANK()` and have three items tie for 1st place, the next item in the list will be ranked 4th! If the committee wants a strict 1st, 2nd, 3rd podium regardless of ties, you must use `DENSE_RANK()`.
* **The NULL Lag:** When you use `LAG()` on the very first row of your results, there is no "previous" row to look at. SQL will automatically insert a `NULL` for that row. This is expected behavior!

## 🧠 Outcomes & Learnings
* Mastered the nuances of data ranking using `RANK` and `DENSE_RANK`.
* Handled identical data ties gracefully without losing analytical integrity.
* Learned to retrieve adjacent row data on the fly using the `LAG` function.

---

## 📱 LinkedIn Post Template

**Share your progress!** 
> **Day 19/21 of the SQL Database Challenge! 🚀** 
>
> Advanced analytics means dealing with edge cases—like ties. Today with @Synexus, I expanded my Window Functions toolkit by mastering `RANK()`, `DENSE_RANK()`, and `LAG()`.
>
> Using `ROW_NUMBER()` on tied data creates unfair, arbitrary sorting. I learned how to implement true ranking systems that handle identical project budgets gracefully. I also explored the `LAG()` function, which acts like SQL time-travel, allowing a query to look backward at previous rows to calculate step-by-step differences in a single pass.
>
> Just 2 days left until the Grand Finale Capstone!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic