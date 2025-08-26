-- Load CSV as text (EU dates), then cast explicitly
CREATE OR REPLACE TABLE transactions AS
SELECT
  CAST(user_id AS BIGINT)                           AS user_id,
  CAST(spend AS DECIMAL(10,2))                      AS spend,
  STRPTIME(transaction_date, '%d/%m/%Y %H:%M:%S')   AS transaction_date
FROM read_csv_auto('data.csv', HEADER=TRUE, ALL_VARCHAR=TRUE);
