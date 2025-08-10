-- Load rows into the table defined in schema.sql
-- (optional) clear previous rows if you re-run inside the same session
DELETE FROM stock_prices;

INSERT INTO stock_prices
SELECT * FROM read_csv_auto('data.csv', HEADER=TRUE);