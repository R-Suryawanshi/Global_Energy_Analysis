-- =====================================================
-- GLOBAL CLIMATE & ENERGY ANALYTICS
-- 03 - CREATE TABLES
-- =====================================================

CREATE OR REPLACE TABLE RAW_ENERGY_DATA
USING TEMPLATE (
    SELECT ARRAY_AGG(
        OBJECT_CONSTRUCT(*)
    )
    FROM TABLE(
        INFER_SCHEMA(
            LOCATION => '@ENERGY_STAGE',
            FILE_FORMAT => 'CSV_FORMAT'
        )
    )
);