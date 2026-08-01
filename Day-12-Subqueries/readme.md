# 🗓️ Day 12: Nested Logic (Introduction to Subqueries)

## 🎯 Problem Statement
Welcome to Phase 2. The Core Committee has a new question: *"Which Synexus projects have a budget higher than our average project budget?"*

Think about the logic here. You cannot filter for the "average budget" until you actually calculate what the average budget is! You could run one query to find the average, write the number down on a piece of paper, and then write a second query using that number. But that is manual, slow, and hardcoded. 

Instead, we will write a query *inside* another query. This is called a Subquery.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * **Scalar Subqueries:** A nested query that returns exactly one single value (e.g., finding the `MAX` or `AVG`).
  * **List Subqueries:** A nested query that returns a single column of multiple values, used with the `IN` operator.
* **Goal:** Write nested logic to dynamically filter projects and identify active members.

## 📝 Task Requirements

**Step 1: Setup**
Use `synexus_db;`. Ensure your `projects` table (from Day 10) and your `attendance` table are populated.

**Step 2: The Scalar Subquery**
Write a query to solve the Core Committee's question. 
* Select the `project_name` and `budget` from the `projects` table.
* In your `WHERE` clause, filter for budgets that are `>` (greater than) the average budget.
* *Beginner Tip: Instead of typing a hard number, put your average calculation query inside parentheses like this: `WHERE budget > (SELECT ... )`.*

**Step 3: The List Subquery (`IN`)**
We want a clean list of all members who have attended *at least one* event, but we don't want to deal with `JOIN` syntax right now. 
* Write a main query to select `first_name` and `last_name` from `members`.
* Use a `WHERE member_id IN (...)` clause.
* Inside the parentheses, write a subquery that selects all the `member_id`s present in the `attendance` table. 

### 📊 Expected Output for Step 2
Your result should dynamically calculate the average in the background, and only return the top-tier projects:

| project_name                | budget  |
|-----------------------------|---------|
| StoreLane Hyperlocal App    | 5000.00 |
| Logistics Management System | 5000.00 |

## ⚠️ Common Pitfalls & Expected Bugs
* **The "Subquery returns more than 1 row" Error:** If you write `WHERE budget = (SELECT budget FROM projects)`, SQL will crash. Why? Because the subquery returns a whole list of budgets, and a single budget cannot equal a whole list! 
  * **Rule:** If you use `=`, `>`, or `<`, your subquery MUST return exactly ONE number (using aggregates like `AVG` or `MAX`).
  * **Rule:** If your subquery returns a list, you MUST use the `IN` operator.

## 🧠 Outcomes & Learnings
* Entered Phase 2 by mastering multi-step logical queries.
* Learned to nest queries inside the `WHERE` clause to create dynamic filters.
* Understood the strict difference between Scalar subqueries and List subqueries.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 12/21 of the SQL Database Challenge! 🚀**
>
> Kicking off Phase 2: Advanced Execution with @Synexus! Today, we moved past single-layer questions and dove into nested logic using Subqueries.
>
> Sometimes, you need SQL to answer a question before it can answer your main question. Instead of hardcoding values, I learned how to nest an entire query inside a `WHERE` clause. I wrote a Scalar Subquery to dynamically filter projects above the average budget, and a List Subquery to isolate active community members without using a `JOIN`.
>
> The logic is getting deeper! 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic