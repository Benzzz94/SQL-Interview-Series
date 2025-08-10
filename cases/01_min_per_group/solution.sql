WITH ranked AS (
  SELECT
    ticker, dt, open, high, low, close,
    MIN(open) OVER (PARTITION BY ticker) AS min_open
  FROM stock_prices
)
SELECT ticker, dt, open, high, low, close
FROM ranked
WHERE open = min_open
ORDER BY ticker, dt;
