# DEPI Data Warehouse Project — dbt

## Project Overview

This project implements a data transformation pipeline using **dbt (Data Build Tool)** and Microsoft SQL Server. It organizes employee data into three layers: ODS, Staging, and Data Warehouse (DWH).

The goal is to improve data quality, standardize employee information, and build structured dimension models for analytical use.

## Architecture

The project follows this workflow:

**SQL Server Source → ODS → Staging → DWH**

- **ODS (Operational Data Store):** Exposes the raw employee dataset through a dbt view.
- **Staging (STG):** Cleans and standardizes employee data, including names, email addresses, gender, and salary values.
- **Data Warehouse (DWH):** Builds dimension models for employees, countries, departments, and genders.

## Data Models

| Layer | Model | Description |
|---|---|---|
| ODS | `ODS` | Raw employee data view |
| STG | `stg_employees` | Cleaned and standardized employee data |
| DWH | `dim_employee` | Employee dimension with descriptive dimension keys |
| DWH | `dim_country` | Unique country values |
| DWH | `dim_department` | Unique department values |
| DWH | `dim_gender` | Unique gender values |

## Technologies Used

- dbt Core
- Microsoft SQL Server
- SQL
- Jinja
- YAML
- PowerShell

## Data Quality and Testing

The project includes generic and singular data tests to validate data quality.

Examples include:
- `not_null` — checks required fields.
- `unique` — checks uniqueness constraints.
- `not_negative` — custom generic test for non-negative salaries.
- `no_duplicate_employee_emails` — singular test to identify duplicate employee emails.

The project also includes custom macros for name capitalization and salary cleaning.

## Documentation

The project documentation is generated using dbt:

```bash
dbt docs generate
dbt docs serve
```

The documentation provides model descriptions, column information, tests, and model lineage.

## How to Run

1. Configure your SQL Server connection in `profiles.yml`.
2. Activate the project's Python virtual environment.
3. Run the following commands from the project directory:

```bash
dbt debug
dbt parse
dbt build
dbt docs generate
```

To view the documentation locally:

```bash
dbt docs serve
```

## Project Status

The project currently contains six dbt models and 29 data tests. The latest successful `dbt build` completed with **35 passing models and tests combined**, with zero warnings and zero errors.

---

**Developed as part of the Digital Egypt Pioneers Initiative (DEPI) training.**
