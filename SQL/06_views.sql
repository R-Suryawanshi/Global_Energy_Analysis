USE DATABASE CLIMATE_ENERGY_DB;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE VIEW VW_COUNTRY_OVERVIEW AS
SELECT
    "country",
    "year",
    "population",
    "gdp",
    "electricity_generation",
    "electricity_demand",
    "greenhouse_gas_emissions"
FROM CLEAN_ENERGY_DATA;

SHOW VIEWS;

SELECT *
FROM VW_COUNTRY_OVERVIEW
LIMIT 10;

CREATE OR REPLACE VIEW VW_COUNTRY_ENERGY_SUMMARY AS
SELECT
    "country",

    COUNT(*) AS TOTAL_RECORDS,

    AVG("electricity_generation") AS AVG_ELECTRICITY_GENERATION,

    AVG("electricity_demand") AS AVG_ELECTRICITY_DEMAND,

    AVG("greenhouse_gas_emissions") AS AVG_GHG,

    AVG("renewables_consumption") AS AVG_RENEWABLES

FROM CLEAN_ENERGY_DATA

GROUP BY "country";

SELECT *
FROM VW_COUNTRY_ENERGY_SUMMARY
ORDER BY AVG_GHG DESC
LIMIT 10;
