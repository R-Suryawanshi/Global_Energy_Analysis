-- =====================================================
-- GLOBAL CLIMATE & ENERGY ANALYTICS
-- 04 - LOAD DATA
-- =====================================================

COPY INTO RAW_ENERGY_DATA
FROM @ENERGY_STAGE
FILE_FORMAT = (
    FORMAT_NAME = 'CSV_FORMAT'
)
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;

-- Verify the load
SELECT COUNT(*) AS TOTAL_RECORDS FROM RAW_ENERGY_DATA;
