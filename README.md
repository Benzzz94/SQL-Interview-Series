# SQL Interview Series (Starter)

This is the **minimal** starter so you can begin right away.

## What's inside
- `cases/01_min_per_group/` — one complete example (data + SQL + expected result)
- `scripts/run_case.py` — runs a case and writes `out/actual.csv`
- `requirements.txt` — only DuckDB
- `.gitignore` — ignores per-case outputs

## Quick start (local)
```bash
python -m venv .venv
# Windows: .venv\Scripts\activate
# macOS/Linux: source .venv/bin/activate

pip install -r requirements.txt

# Run the included example
python scripts/run_case.py cases/01_min_per_group
```

You will see `cases/01_min_per_group/out/actual.csv`.
Compare it with `cases/01_min_per_group/expected.csv` (they should match).

