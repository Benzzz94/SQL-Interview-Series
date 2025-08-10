import sys, csv, os, pathlib
import duckdb

def main():
    if len(sys.argv) < 2:
        print("Usage: python scripts/run_case.py cases/01_min_per_group")
        raise SystemExit(2)

    case_path = pathlib.Path(sys.argv[1]).resolve()
    if not case_path.exists():
        print(f"[ERROR] Case path not found: {case_path}")
        raise SystemExit(1)

    print(f"\n=== Running case: {case_path.name} ===")
    cwd = os.getcwd()
    os.chdir(case_path)

    try:
        con = duckdb.connect()

        # 1) Optional schema (types)
        schema_file = case_path / "schema.sql"
        if schema_file.exists():
            con.execute(schema_file.read_text())

        # 2) Load data from CSV into table(s)
        load_file = case_path / "load_duckdb.sql"
        con.execute(load_file.read_text())

        # 3) Execute solution and write out/actual.csv
        solution_file = case_path / "solution.sql"
        res = con.execute(solution_file.read_text()).fetchall()
        cols = [d[0] for d in con.description]

        out_dir = case_path / "out"
        out_dir.mkdir(exist_ok=True)

        with open(out_dir / "actual.csv", "w", newline="") as f:
            w = csv.writer(f); w.writerow(cols); w.writerows(res)

        # 4) Compare with expected.csv if present
        exp_file = case_path / "expected.csv"
        if exp_file.exists():
            def read_csv(p):
                with open(p, newline="") as f:
                    return list(csv.reader(f))
            exp = read_csv(exp_file)
            act = read_csv(out_dir / "actual.csv")
            if exp == act:
                print("[OK] Output matches expected.csv")
            else:
                print("[FAIL] Output differs from expected.csv")
                print("Expected (first 10 rows):", exp[:10])
                print("Actual   (first 10 rows):", act[:10])
                raise SystemExit(1)
        else:
            print("[OK] Ran solution.sql (no expected.csv to compare)")

    finally:
        os.chdir(cwd)

if __name__ == "__main__":
    main()
