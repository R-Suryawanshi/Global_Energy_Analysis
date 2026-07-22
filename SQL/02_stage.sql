-- =============================================
-- Create Internal Stage
-- =============================================

CREATE STAGE ENERGY_STAGE;

SHOW STAGES;

-- =============================================
-- Create CSV File Format
-- =============================================

CREATE FILE FORMAT CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
NULL_IF = ('NULL', '');

SHOW FILE FORMATS;