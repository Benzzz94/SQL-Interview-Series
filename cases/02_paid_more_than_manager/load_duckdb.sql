-- Load CSV into DuckDB
CREATE OR REPLACE TABLE employee AS
SELECT
  CAST(employee_id AS BIGINT)                            AS employee_id,
  name                                                   AS name,
  CASE
    WHEN manager_id IS NULL OR TRIM(manager_id) IN ('', 'NULL', 'null')
      THEN NULL
    ELSE CAST(manager_id AS BIGINT)
  END                                                    AS manager_id,
  CAST(salary AS DOUBLE)                                 AS salary
FROM read_csv_auto('data.csv', HEADER=TRUE, ALL_VARCHAR=TRUE);