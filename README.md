# SQL Interview Series — Runnable Cases

![Python](https://img.shields.io/badge/Python-3.12%2B-blue)
![DuckDB](https://img.shields.io/badge/DuckDB-1.3%2B-informational)
[![Download](https://img.shields.io/badge/Download-ZIP-success)](https://github.com/Benzzz94/SQL-Interview-Series/archive/refs/heads/main.zip)

**Real SQL interview problems with tiny, reproducible datasets.**  
Each case ships with a CSV, a clear problem description, a clean solution query, and an `expected.csv` so you can verify your output.

---

## How to use this repo

### Run a case locally
```bash
python -m venv .venv
# Windows PowerShell: .\.venv\Scripts\Activate.ps1
# Git Bash/macOS/Linux: source .venv/bin/activate
pip install -r requirements.txt

# Run any case (writes out/actual.csv and compares to expected.csv if present)
python scripts/run_case.py cases/01_min_per_group
python scripts/run_case.py cases/02_paid_more_than_manager
```

### View problems & solutions on GitHub
Open a case folder:
- `problem.md` → prompt & schema  
- `solution.sql` → final query (deterministic `ORDER BY`)  
- `data.csv` → tiny dataset (edge cases included)  
- `expected.csv` → golden output used for verification

---

## Current cases

| #  | Title                                   | Folder                                                                    | What it shows |
|----|-----------------------------------------|---------------------------------------------------------------------------|---------------|
| 01 | Min row(s) per ticker (ties OK)         | [`cases/01_min_per_group/`](cases/01_min_per_group/)                      | Window `MIN()` per group + tie-safe filter; deterministic ordering. |
| 02 | Employees paid more than their manager  | [`cases/02_paid_more_than_manager/`](cases/02_paid_more_than_manager/)    | Self-join on `manager_id` + salary comparison; handles NULL managers. |

---

## What’s in each case?

- **`problem.md`** – Short prompt & schema.  
- **`data.csv`** – Small, focused dataset (with edge cases).  
- **`load_duckdb.sql`** – Loads the CSV into DuckDB tables.  
- **`solution.sql`** – Clean, final query (ends with `ORDER BY` for stable output).  
- **`expected.csv`** – Golden output used by the runner to verify results.

---

## Why DuckDB?

- **Zero setup** - runs in-process, perfect for small, reproducible exercises.  
- **CSV-first** - read CSVs directly without external services.  
- **CI-friendly** - consistent results on any OS.

---

## Troubleshooting (quick)

- **`ModuleNotFoundError: duckdb`**  
  Install deps in the same Python you run:
  ```bash
  .\.venv\Scripts\python.exe -m pip install -r requirements.txt
  ```

- **PowerShell blocks venv activation**  
  Use the venv’s Python directly:
  ```bash
  .\.venv\Scripts\python.exe scripts\run_case.py cases\01_min_per_group
  ```
