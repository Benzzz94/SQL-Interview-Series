WITH mng_cte AS (
  SELECT
    mgr.employee_id AS manager_id,
    mgr.name        AS manager_name,
    mgr.salary      AS manager_salary,
    emp.employee_id AS employee_id,
    emp.name        AS employee_name,
    emp.salary      AS employee_salary
  FROM employee AS mgr
  JOIN employee AS emp
    ON mgr.employee_id = emp.manager_id
)
SELECT
  employee_id,
  employee_name
FROM mng_cte
WHERE employee_salary > manager_salary
ORDER BY employee_id;
