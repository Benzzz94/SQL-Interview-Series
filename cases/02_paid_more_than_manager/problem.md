# Case 02 — Employees Paid More Than Their Manager

**Goal:** Return employees whose salary is **greater** than their **direct manager's** salary.

**Table:** `employee(employee_id, name, manager_id, salary)`  
- `manager_id` is NULL for top-level managers.

**Return:** `employee_id, employee_name` (order by `employee_id`).

**Edge cases:** NULL `manager_id` (skip); equal salaries are NOT flagged.
