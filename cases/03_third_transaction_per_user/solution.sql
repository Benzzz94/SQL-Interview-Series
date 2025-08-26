WITH trans_num_cte AS (
  SELECT
    user_id,
    CAST(spend AS DECIMAL(10,2)) AS spend,
    transaction_date,
    ROW_NUMBER() OVER (
      PARTITION BY user_id
      ORDER BY transaction_date
    ) AS row_num
  FROM transactions
)
SELECT
  user_id,
  CAST(spend AS DECIMAL(10,2)) AS spend,
  STRFTIME(transaction_date, '%d/%m/%Y %H:%M:%S') AS transaction_date
FROM trans_num_cte
WHERE row_num = 3
ORDER BY user_id;
