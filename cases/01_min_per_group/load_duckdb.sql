-- Load the CSV into DuckDB as a table
CREATE TABLE stock_prices AS
SELECT * FROM read_csv_auto('data.csv', HEADER=TRUE);
