# SQL Interview Series — Runnable Cases

[![CI](https://github.com/Benzzz94/SQL-Interview-Series/actions/workflows/ci.yml/badge.svg)](https://github.com/Benzzz94/SQL-Interview-Series/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Python](https://img.shields.io/badge/Python-3.12%2B-blue)
![DuckDB](https://img.shields.io/badge/DuckDB-1.3%2B-informational)
[![Download](https://img.shields.io/badge/Download-ZIP-success)](https://github.com/Benzzz94/SQL-Interview-Series/archive/refs/heads/main.zip)

Real SQL interview problems with tiny datasets. Each case includes **schema**, **CSV**, a **clean solution**, **expected output** for verification, and a short **perf note**. Clone and run in minutes.

## Quick Start
```bash
python -m venv .venv
# Windows: .venv\Scripts\activate
# macOS/Linux: source .venv/bin/activate
pip install -r requirements.txt
python scripts/run_case.py cases/01_min_per_group
```

## What's inside
- `cases/01_min_per_group/` — one complete example (data + SQL + expected result)
- `scripts/run_case.py` — runs a case and writes `out/actual.csv`
- `requirements.txt` — only DuckDB
- `.gitignore` — ignores per-case outputs

```
pip install -r requirements.txt
```

# Run the included example
python scripts/run_case.py cases/01_min_per_group


You will see `cases/01_min_per_group/out/actual.csv`.
Compare it with `cases/01_min_per_group/expected.csv` (they should match).

