-- ===========================================
-- TEST QUERIES
-- ===========================================

-- Sample Data
SELECT *
FROM CLEAN_ENERGY_DATA
LIMIT 10;

-- India Data
SELECT *
FROM CLEAN_ENERGY_DATA
WHERE "country"='India'
LIMIT 10;

-- Highest GDP
SELECT
"country",
MAX("gdp") AS HIGHEST_GDP
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY HIGHEST_GDP DESC
LIMIT 10;

-- Renewable Energy
SELECT
"country",
AVG("renewables_consumption") AS AVG_RENEWABLES
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY AVG_RENEWABLES DESC
LIMIT 10;

-- Window Function Test
SELECT
"country",
"year",
ROW_NUMBER() OVER(PARTITION BY "country" ORDER BY "year") AS RN
FROM CLEAN_ENERGY_DATA
LIMIT 20;

-- View Test
SELECT *
FROM VW_COUNTRY_OVERVIEW
LIMIT 10;

-- Stream Test
SELECT *
FROM RAW_ENERGY_STREAM;

-- Task Status
SHOW TASKS;