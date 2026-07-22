-- IF VALUES ARE NULL, THEN USE WHERE CLAUSE TO FILTER OUT NULLS IN THE ANALYSIS
-- EXAMPLE: SELECT * FROM CLEAN_ENERGY_DATA WHERE "population" IS NOT NULL;


-- ==========================================
-- Analysis 1: Total Countries
-- ==========================================

SELECT COUNT(DISTINCT "country") AS TOTAL_COUNTRIES
FROM CLEAN_ENERGY_DATA;

-- ==========================================
-- Analysis 2: Dataset Year Range
-- ==========================================

SELECT
    MIN("year") AS START_YEAR,
    MAX("year") AS END_YEAR
FROM CLEAN_ENERGY_DATA;

-- ==========================================
-- Analysis 3: Countries with Most Records
-- ==========================================

SELECT
    "country",
    COUNT(*) AS RECORDS
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY RECORDS DESC;

-- ==========================================
-- Analysis 4: Top Electricity Producers
-- ==========================================

SELECT
    "country",
    SUM("electricity_generation") AS TOTAL_GENERATION
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY TOTAL_GENERATION DESC
LIMIT 10;

-- ==========================================
-- Analysis 5: Top Electricity Consumers
-- ==========================================

SELECT
    "country",
    SUM("electricity_demand") AS TOTAL_DEMAND
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY TOTAL_DEMAND DESC
LIMIT 10;

-- ==========================================
-- Analysis 6: Highest GHG Emitters
-- ==========================================

SELECT
    "country",
    SUM("greenhouse_gas_emissions") AS TOTAL_EMISSIONS
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY TOTAL_EMISSIONS DESC
LIMIT 10;

-- ==========================================
-- Analysis 7: Renewable Energy Leaders
-- ==========================================

SELECT
    "country",
    AVG("renewables_consumption") AS AVG_RENEWABLES
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY AVG_RENEWABLES DESC
LIMIT 10;

-- ==========================================
-- Analysis 8: Highest GDP
-- ==========================================

SELECT
    "country",
    MAX("gdp") AS HIGHEST_GDP
FROM CLEAN_ENERGY_DATA
GROUP BY "country"
ORDER BY HIGHEST_GDP DESC
LIMIT 10;