# 🗓️ Day 17: Stacking Data (UNION & UNION ALL)

## 🎯 Problem Statement
The Synexus Core Committee is preparing to send out a massive end-of-year newsletter. They need a "Master Contact List" that contains the names and emails of both our active `members` AND our `guest_speakers`. 

Because these two groups live in completely different tables, an `INNER JOIN` won't help us (a join puts columns next to each other, but we want rows *on top* of each other). Today, we use the `UNION` operator to stack the results of two separate queries into one single, unified column structure.

## 🛠️ Tech Stack & Focus Areas
* **Tool:** MySQL Workbench
* **Core Concepts:** * `UNION`: Stacks results vertically and automatically removes duplicates.
  * `UNION ALL`: Stacks results vertically but keeps every single row (faster).
  * Column Matching: The strict architectural rules of combining queries.
* **Goal:** Create a `guest_speakers` table and merge its contacts with the `members` table.

## 📝 Task Requirements

**Step 1: Setup & The New Table**
Use `synexus_db;`. Inside your scaffold file, there is a script to create and populate a `guest_speakers` table. Run it! Notice that one of our speakers (Morgan) is actually also an active member.

**Step 2: The Standard UNION**
Write a query to create the Master Contact List. 
* Write a `SELECT` statement pulling `first_name`, `last_name`, and `email` from the `members` table.
* On the next line, type the keyword `UNION`.
* Below that, write a second `SELECT` statement pulling the exact same three columns from the `guest_speakers` table.
* *Observe your results: Morgan's email will only appear ONCE, because standard `UNION` automatically deletes duplicate rows.*

**Step 3: Keeping Duplicates (UNION ALL)**
Copy your exact query from Step 2, but change the keyword to `UNION ALL`. 
* Run it again. You will now see Morgan's email appear twice. 
* *Engineering Note: `UNION ALL` is significantly faster than `UNION` because the database engine doesn't have to waste processing power searching for and deleting duplicates.*

**Step 4: Labeling the Source**
Sometimes you need to know where the data came from. Rewrite your `UNION ALL` query, but add a hardcoded text column to both queries. 
* In the top query, add `'Member' AS contact_type`.
* In the bottom query, add `'Guest Speaker' AS contact_type`.

### 📊 Expected Output for Step 4
By adding a hardcoded label, you can stack the tables but still identify the origin of each row:

| first_name | last_name | email                  | contact_type  |
|------------|-----------|------------------------|---------------|
| Casey      | Vance     | casey@synexus.com      | Member        |
| Morgan     | Reed      | morgan@synexus.com     | Member        |
| Taylor     | Brooks    | taylor@industry.com    | Guest Speaker |
| Morgan     | Reed      | morgan@synexus.com     | Guest Speaker |

## ⚠️ Common Pitfalls & Expected Bugs
* **The Column Count Mismatch:** If your top query selects 3 columns, and your bottom query selects 4 columns, SQL will immediately crash. Both queries MUST have the exact same number of columns.
* **The Data Type Mismatch:** The columns must also match conceptually. If column 1 in the top query is an `INT` (like `member_id`), column 1 in the bottom query cannot be a `VARCHAR` (like `email`).
* **Sorting a UNION:** If you want to use `ORDER BY` to sort the final Master List alphabetically, you cannot put it in the top query. It must go at the very end of the *bottom* query, applying to the entire combined dataset.

## 🧠 Outcomes & Learnings
* Learned to append data vertically using the `UNION` operator.
* Understood the performance implications of `UNION` (deduplication) vs. `UNION ALL` (raw appending).
* Engineered a dynamic Master Contact List combining separate database entities.

---

## 📱 LinkedIn Post Template

**Share your progress!** 
> **Day 17/21 of the SQL Database Challenge! 🚀** 
>
> Today with @Synexus, I explored vertical data integration using `UNION` and `UNION ALL`.
>
> While `JOIN`s are great for combining columns side-by-side, the Core Committee needed a Master Contact List that stacked rows from both the `members` and `guest_speakers` tables on top of each other. I successfully utilized `UNION` to merge these distinct tables into a single output, learning the strict architectural rules of column matching along the way. I also explored how `UNION ALL` skips the deduplication process to optimize query speed.
>
> Relational databases are all about how you bend and manipulate data structures!
> 
> 🔗 Source Code: [Link to your GitHub Repo]
> 
> #21DaysSQL #Synexus #DatabaseDesign #MySQL #DataEngineering #SQL #BuildInPublic