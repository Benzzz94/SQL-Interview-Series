# Case 03 — Third Transaction Per User 

**Scenario:** Given a `transactions` table of Uber purchases, return the **third chronological transaction** for every user.

**Task:** For each `user_id`, order that user’s rows by `transaction_date` and return only the **3rd** one (if it exists).  
**Output:** `user_id, spend, transaction_date` ordered by `user_id`.

**Table:** `transactions(user_id INTEGER, spend DECIMAL(10,2), transaction_date TIMESTAMP)`


**Notes:** Users with fewer than 3 transactions are excluded. If multiple transactions for a user share the same timestamp, add a stable tie-breaker column when available (e.g., `transaction_id`).