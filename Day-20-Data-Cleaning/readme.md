# 🗓️ Day 20: Polishing the Output (Data Cleaning & Formatting)

## 🎯 Problem Statement
The Core Committee wants a polished directory of all members and events. However, users often type their names in all lowercase, standard SQL timestamps (like `2026-08-15 10:00:00`) are ugly on a dashboard, and `NULL` values can break external visualization tools. 

We need to transform the raw data *as we pull it out* of the database. We will use string manipulation, date extraction, and NULL-handling functions to present perfectly clean data without altering the original tables.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `CONCAT()`: Merging multiple columns into one string.
  * `UPPER()` / `LOWER()`: Standardizing text casing.
  * `YEAR()`, `MONTHNAME()`: Extracting readable parts of a date.
  * `COALESCE()`: The industry standard for replacing `NULL` values on the fly.
* **Goal:** Write a query that generates a perfectly formatted, dashboard-ready report.

## 📝 Task Requirements

**Step 1: Setup & Messy Data**
Use `synexus_db;`. In your scaffold file, there is a script to insert a "messy" member record (lowercase names, no designation). Run it so we have something to clean!

**Step 2: String Manipulation (`CONCAT` & `UPPER`)**
Write a query against the `members` table. 
* Instead of selecting `first_name` and `last_name` separately, use `CONCAT(first_name, ' ', last_name)` to merge them into a single column aliased as `full_name`. 
* *Challenge:* Wrap your `CONCAT` function inside an `UPPER()` function so the entire full name is capitalized!

**Step 3: Handling NULLs (`COALESCE`)**
`NULL` looks like a database error on a business report. 
* Add the `designation` column to your query. 
* Wrap it in the `COALESCE(designation, 'Unassigned')` function. This tells SQL: *"If the designation exists, show it. If it is NULL, print 'Unassigned' instead."*

**Step 4: Date Formatting**
Write a new query against the `events` table to make the dates readable.
* Select the `event_name`.
* Use `YEAR(event_date)` to extract just the year.
* Use `MONTHNAME(event_date)` to extract the full text name of the month (e.g., 'August' instead of '08').

### 📊 Expected Output for Step 2 & 3
Your cleaning query will take messy, incomplete database rows and output a perfectly standardized report:

| full_name       | clean_designation       |
|-----------------|-------------------------|
| JORDAN VANCE    | Core Leadership         |
| TAYLOR BROOKS   | Member                  |
| CASEY SMITH     | Unassigned              |

*(Notice how Casey's missing designation was caught and replaced, and all names are perfectly cased!)*

## ⚠️ Common Pitfalls & Expected Bugs
* **The Missing Space in CONCAT:** If you write `CONCAT(first_name, last_name)`, SQL will mash the words together (e.g., "CaseySmith"). You must explicitly tell SQL to add a space string in the middle: `CONCAT(first_name, ' ', last_name)`.
* **COALESCE vs. IS NULL:** We learned `IS NULL` on Day 6 to *filter* rows in a `WHERE` clause. `COALESCE` is used in the `SELECT` clause to *replace* missing data on the fly. They do different jobs!

## 🧠 Outcomes & Learnings
* Mastered string manipulation to dynamically format text output.
* Learned to extract human-readable components from strict SQL date formats.
* Utilized `COALESCE` to safeguard downstream dashboards from breaking due to `NULL` values.

---

## 📱 LinkedIn Post Template

**Share your progress!** 
> **Day 20/21 of the SQL Database Challenge! 🚀** 
>
> Tomorrow is the Grand Finale! But before building the ultimate Capstone report, I spent today with @Synexus learning how to clean and format raw data.
>
> Real-world database entries are messy—inconsistent capitalization, ugly timestamp formats, and random `NULL` values. I mastered SQL's built-in transformation tools: using `CONCAT()` and `UPPER()` to standardize text, extracting readable metrics with Date Functions, and utilizing the powerful `COALESCE()` function to dynamically replace `NULL` values with clean default text so downstream BI dashboards don't break.
>
> Data Engineering isn't just about getting the data; it's about making it presentable. Bring on Day 21!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic