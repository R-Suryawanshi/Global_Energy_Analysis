-- TASKS - Automated data processing jobs
-- IT ALLOWS YOU TO SCHEDULE AND AUTOMATE SQL STATEMENTS OR PROCEDURES TO RUN AT SPECIFIC INTERVALS OR TRIGGERS.

USE DATABASE CLIMATE_ENERGY_DB;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE TASK ENERGY_STREAM_TASK
WAREHOUSE = COMPUTE_WH
SCHEDULE = '5 MINUTE'
WHEN SYSTEM$STREAM_HAS_DATA('RAW_ENERGY_STREAM')
AS

INSERT INTO CLEAN_ENERGY_DATA
(
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
    "electricity_generation",
    "electricity_demand",
    "carbon_intensity_elec",
    "greenhouse_gas_emissions",
    "wind_consumption",
    "hydro_consumption",
    "nuclear_consumption",
    "primary_energy_consumption",
    "solar_consumption"
)

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
    "electricity_generation",
    "electricity_demand",
    "carbon_intensity_elec",
    "greenhouse_gas_emissions",
    "wind_consumption",
    "hydro_consumption",
    "nuclear_consumption",
    "primary_energy_consumption",
    "solar_consumption"
FROM RAW_ENERGY_STREAM;

SHOW TASKS;

-- ALTER IS USED TO MODIFY AN EXISTING TASK, SUCH AS CHANGING ITS SCHEDULE, WAREHOUSE, OR SQL STATEMENT.
ALTER TASK ENERGY_STREAM_TASK RESUME;

SELECT * FROM RAW_ENERGY_STREAM;

-- EXECUTE IS USED TO MANUALLY RUN A TASK IMMEDIATELY, REGARDLESS OF ITS SCHEDULE OR TRIGGERS.
EXECUTE TASK ENERGY_STREAM_TASK;

SELECT *
FROM CLEAN_ENERGY_DATA
WHERE "country" = 'TEST_COUNTRY';

-- IT IS USED TO VIEW THE HISTORY OF TASK EXECUTIONS, INCLUDING SUCCESSFUL RUNS AND ANY ERRORS ENCOUNTERED DURING EXECUTION.
SELECT
    NAME,
    STATE,
    ERROR_CODE,
    ERROR_MESSAGE
FROM TABLE(
    INFORMATION_SCHEMA.TASK_HISTORY(
        TASK_NAME => 'ENERGY_STREAM_TASK'
    )
)
ORDER BY SCHEDULED_TIME DESC;