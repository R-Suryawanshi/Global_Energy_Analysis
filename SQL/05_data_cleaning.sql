-- ============================================
-- DATA CLEANING
-- Step 1 : Check total records
-- ============================================

SELECT COUNT(*) AS TOTAL_RECORDS
FROM RAW_ENERGY_DATA;

-- ============================================
-- Step 2 : Check Missing Values
-- ============================================

SELECT
    COUNT(*) AS TOTAL_ROWS,
    COUNT("country") AS COUNTRY_NOT_NULL,
    COUNT("year") AS YEAR_NOT_NULL,
    COUNT("iso_code") AS ISO_CODE_NOT_NULL,
    COUNT("population") AS POPULATION_NOT_NULL,
    COUNT("gdp") AS GDP_NOT_NULL
FROM RAW_ENERGY_DATA;

-- ============================================
-- Step 3 : Count NULL values
-- ============================================

SELECT
    SUM(IFF("country" IS NULL,1,0)) AS COUNTRY_NULLS,
    SUM(IFF("iso_code" IS NULL,1,0)) AS ISO_NULLS,
    SUM(IFF("population" IS NULL,1,0)) AS POPULATION_NULLS,
    SUM(IFF("gdp" IS NULL,1,0)) AS GDP_NULLS
FROM RAW_ENERGY_DATA;

-- ============================================
-- Step 4 : Check Duplicate Records
-- ============================================

SELECT
    "country",
    "year",
    COUNT(*) AS RECORD_COUNT
FROM RAW_ENERGY_DATA
GROUP BY
    "country",
    "year"
HAVING COUNT(*) > 1;

-- ============================================
-- Step 5 : Create Clean Table
-- ============================================

CREATE OR REPLACE TABLE CLEAN_ENERGY_DATA AS
SELECT
    "country",
    "year",
    "iso_code",
    "population",
    "gdp",

    "biofuel_consumption",
    "coal_consumption",
    "gas_consumption",
    "oil_consumption",

    "renewables_consumption",
    "solar_consumption",
    "wind_consumption",
    "hydro_consumption",
    "nuclear_consumption",

    "primary_energy_consumption",
    "electricity_generation",
    "electricity_demand",

    "carbon_intensity_elec",
    "greenhouse_gas_emissions"

FROM RAW_ENERGY_DATA;


-- ============================================
-- Standardize Country Names
-- ============================================

UPDATE CLEAN_ENERGY_DATA
SET "country" = TRIM("country");