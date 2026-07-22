# Global Energy Analytics - Architecture

## Project Overview

This project demonstrates an end-to-end Snowflake Data Warehouse solution for analyzing global energy consumption and electricity generation using the OWID (Our World in Data) Energy dataset.

The solution covers the complete data pipeline from raw CSV ingestion to automated data processing using Snowflake Streams and Tasks.

---

## Architecture Diagram

```
                CSV Dataset
                      │
                      ▼
              Internal Stage
                      │
                      ▼
              RAW_ENERGY_DATA
                      │
          Data Validation & Cleaning
                      │
                      ▼
            CLEAN_ENERGY_DATA
              │            │
              │            │
              ▼            ▼
          SQL Views    Analysis Queries
              │
              ▼
      Window Functions
              │
              ▼
      RAW_ENERGY_STREAM
              │
              ▼
      ENERGY_STREAM_TASK
              │
              ▼
      Automated Data Pipeline
              │
              ▼
        Dashboard / Reports
```

---

## Snowflake Components Used

- Database
- Schema
- Warehouse
- Internal Stage
- Tables
- COPY INTO
- Views
- Streams
- Tasks
- Window Functions

---

## Workflow

1. Create Database and Schema
2. Create Internal Stage
3. Upload CSV Dataset
4. Load data using COPY INTO
5. Validate imported data
6. Clean raw data
7. Create reporting views
8. Perform business analysis
9. Use Window Functions
10. Capture changes using Streams
11. Automate ingestion using Tasks
12. Visualize data using Dashboard