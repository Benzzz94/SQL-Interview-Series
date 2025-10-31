# Case 04 — 3-Topping Pizza Cost Combinations (2-column output)

**Task:** From `pizza_toppings(topping_name, ingredient_cost)`, list **all unique** 3‑topping pizzas (no repeated topping per pizza).  
Each row must be:
- `pizza` — three toppings **alphabetically** concatenated with commas (e.g., `Chicken,Pepperoni,Sausage`).
- `total_cost` — sum of the three ingredient costs with **two decimals**.

**Ordering:** sort by **`total_cost` DESC**, then by **`pizza` ASC**.  
Break ties alphabetically by topping names (which is equivalent to sorting by `pizza`).

**Constraints:**
- Do **not** display pizzas where any topping repeats (e.g., `Pepperoni,Pepperoni,Onion` is invalid).
- The toppings **must** be listed in alphabetical order inside `pizza` (e.g., `Chicken,Onions,Sausage`).

**Table:** `pizza_toppings(topping_name TEXT, ingredient_cost DECIMAL(10,2))`
