# 🗓️ Day 6: Handling Missing Data & Conditional Logic

## 🎯 Problem Statement
Real-world data is messy. Sometimes a Synexus member forgets to add a phone number, or an upcoming event hasn't been assigned a room location yet. If you try to filter for these using standard equals signs (e.g., `location = ''`), SQL might miss them. 

Furthermore, the Core Committee often needs to view data in categories that don't actually exist in the database. For example, categorizing members into "Leadership" vs "General" without permanently altering the table. Today, we master `NULL` handling and the powerful `CASE` statement.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `IS NULL` / `IS NOT NULL`: Finding missing data.
  * `CASE WHEN ... THEN ... ELSE ... END`: SQL's version of IF/ELSE logic.
  * `AS`: Creating an alias (temporary name) for a column.
* **Goal:** Identify missing records and generate a custom, categorized report using conditional logic.

## 📝 Task Requirements

**Step 1: Setup & Missing Data Injection**
Before we query missing data, we need some! Run an `INSERT` statement to add an event, but intentionally leave the `location` completely blank (do not pass a value for it).

**Step 2: Finding the Blanks (`IS NULL`)**
Write a query to find all events where the location has not been decided yet. 
* *Beginner Tip: You cannot write `WHERE location = NULL`. In SQL, NULL means "unknown". You cannot equal an unknown. You must write `WHERE location IS NULL`.*

**Step 3: Finding Complete Records (`IS NOT NULL`)**
Write a query to find all members who *do* have a designation listed (meaning the designation column is not empty).

**Step 4: The `CASE` Statement (Conditional Logic)**
The Core Committee wants a simplified report. Write a query that selects the `first_name` and `designation` of all members. Add a third, temporary column called `role_category`. 
* If their designation is 'Founder' or 'Chief Strategic Officer', label them as 'Core Leadership'.
* Otherwise, label them as 'General Member'.

### 📊 Expected Output for Step 4
When you execute your `CASE` statement correctly, your results grid should look like this temporary table:

| first_name | designation             | role_category    |
|------------|-------------------------|------------------|
| Sarah      | Founder                 | Core Leadership  |
| Marcus     | Chief Strategic Officer | Core Leadership  |
| Liam       | Member                  | General Member   |
| Elena      | Lead Developer          | General Member   |

*(Note: `role_category` does not permanently exist in your database! It is generated on the fly.)*

## ⚠️ Common Pitfalls & Expected Bugs
* **The Missing `END`:** A `CASE` statement MUST conclude with the keyword `END`. If you forget it, MySQL will throw a syntax error.
* **Blank vs. NULL:** In SQL, an empty string `''` (like hitting spacebar) is NOT the same as `NULL`. `NULL` means the absence of data. `''` means the data exists, but it's empty text. `IS NULL` only finds the true absences!

## 🧠 Outcomes & Learnings
* Learned to safely identify and handle missing data records.
* Engineered on-the-fly data categorization using `CASE` logic.
* Mastered the use of `AS` to give clean aliases to calculated columns.

---

## 📱 LinkedIn Post Template

**Share your progress!** > **Day 6/21 of the SQL Database Challenge! 🚀**
>
> Real-world data is messy. Today with @Synexus, I focused on handling `NULL` values and building dynamic reports using Conditional Logic.
>
> You can't use an equals sign to find missing data in SQL (because you can't equal an 'unknown'). I mastered the `IS NULL` operator to track down incomplete records. Then, I used the `CASE WHEN` statement to generate custom, categorized data columns on the fly without altering the core database structure!
>
> Tomorrow, we cross the threshold. We start joining tables together! 
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic