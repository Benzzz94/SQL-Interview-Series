-- Load toppings CSV with explicit types
CREATE OR REPLACE TABLE pizza_toppings AS
SELECT
  topping_name::TEXT        AS topping_name,
  CAST(ingredient_cost AS DECIMAL(10,2)) AS ingredient_cost
FROM read_csv_auto('data.csv', HEADER=TRUE, ALL_VARCHAR=TRUE);
