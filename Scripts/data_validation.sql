-- ===========================================
-- DATA VALIDATION
-- ===========================================

-- Total Records
SELECT COUNT(*) AS TOTAL_RECORDS
FROM RAW_ENERGY_DATA;

-- Total Clean Records
SELECT COUNT(*) AS TOTAL_RECORDS
FROM CLEAN_ENERGY_DATA;

-- Check NULL Values
SELECT
COUNT(*) AS TOTAL_ROWS,
COUNT("country") AS COUNTRY_NOT_NULL,
COUNT("year") AS YEAR_NOT_NULL,
COUNT("iso_code") AS ISO_CODE_NOT_NULL,
COUNT("population") AS POPULATION_NOT_NULL,
COUNT("gdp") AS GDP_NOT_NULL,
COUNT("electricity_generation") AS ELECTRICITY_GENERATION_NOT_NULL,
COUNT("electricity_demand") AS ELECTRICITY_DEMAND_NOT_NULL,
COUNT("greenhouse_gas_emissions") AS GHG_NOT_NULL
FROM CLEAN_ENERGY_DATA;

-- Duplicate Records
SELECT
    "country",
    "year",
    COUNT(*) AS RECORD_COUNT
FROM CLEAN_ENERGY_DATA
GROUP BY
    "country",
    "year"
HAVING COUNT(*) > 1;

-- Distinct Countries
SELECT COUNT(DISTINCT "country") AS TOTAL_COUNTRIES
FROM CLEAN_ENERGY_DATA;

-- Year Range
SELECT
MIN("year") AS START_YEAR,
MAX("year") AS END_YEAR
FROM CLEAN_ENERGY_DATA;