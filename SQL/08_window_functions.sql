-- ============================================
-- ROW_NUMBER() - Assigns a unique sequential integer to rows within a partition of a result set, starting at 1 for the first row in each partition.
-- ============================================
SELECT
    "country",
    "year",
    "electricity_generation",

    ROW_NUMBER() OVER(
        PARTITION BY "country"
        ORDER BY "year"
    ) AS ROW_NO

FROM CLEAN_ENERGY_DATA

WHERE "electricity_generation" IS NOT NULL
LIMIT 30;

-- ============================================
-- RANK() - Assigns a rank to each row within a partition of a result set, with gaps in the ranking values when there are ties.
-- ============================================

SELECT
    "country",
    "year",
    "electricity_generation",

    RANK() OVER (
        ORDER BY "electricity_generation" DESC
    ) AS RANKING

FROM CLEAN_ENERGY_DATA

WHERE "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- DENSE_RANK() - Similar to RANK(), but without gaps in the ranking values when there are ties.
-- ============================================

SELECT
    "country",
    "year",
    "electricity_generation",

    DENSE_RANK() OVER (
        ORDER BY "electricity_generation" DESC
    ) AS DENSE_RANKING

FROM CLEAN_ENERGY_DATA

WHERE "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- LAG() - Provides access to a row at a given physical offset that comes before the current row within the partition.
-- ============================================

SELECT
    "country",
    "year",
    "electricity_generation",

    LAG("electricity_generation") OVER (
        PARTITION BY "country"
        ORDER BY "year"
    ) AS PREVIOUS_YEAR_GENERATION

FROM CLEAN_ENERGY_DATA

WHERE "country" = 'India'
AND "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- LEAD() - Provides access to a row at a given physical offset that follows the current row within the partition. 
-- ============================================

SELECT
    "country",
    "year",
    "electricity_generation",

    LEAD("electricity_generation") OVER (
        PARTITION BY "country"
        ORDER BY "year"
    ) AS NEXT_YEAR_GENERATION

FROM CLEAN_ENERGY_DATA

WHERE "country" = 'India'
AND "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- RUNNING TOTAL - Calculates a cumulative total of a specified column over a partition of the result set.
-- ============================================
SELECT
    "country",
    "year",
    "electricity_generation",

    SUM("electricity_generation") OVER (
        PARTITION BY "country"
        ORDER BY "year"
    ) AS RUNNING_TOTAL

FROM CLEAN_ENERGY_DATA

WHERE "country" = 'India'
AND "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- COUNT() - Counts the number of rows in a partition of the result set.
-- ============================================

SELECT
    "country",
    "year",

    COUNT(*) OVER(
        PARTITION BY "country"
    ) AS TOTAL_RECORDS

FROM CLEAN_ENERGY_DATA
LIMIT 30;

-- ============================================
-- AVG() - Calculates the average of a specified column over a partition of the result set.
-- ============================================
SELECT
    "country",
    "year",
    "electricity_generation",

    AVG("electricity_generation") OVER (
        PARTITION BY "country"
        ORDER BY "year"
    ) AS AVG_ELECTRICITY_GENERATION

FROM CLEAN_ENERGY_DATA

WHERE "country" = 'India'
AND "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- SUM() - Calculates the sum of a specified column over a partition of the result set.
-- ============================================
SELECT
    "country",
    "year",
    "electricity_generation",
    SUM("electricity_generation") OVER (
        PARTITION BY "country"
        ORDER BY "year"
    ) AS SUM_ELECTRICITY_GENERATION
FROM CLEAN_ENERGY_DATA
WHERE "country" = 'India'
AND "electricity_generation" IS NOT NULL
LIMIT 20;

-- ============================================
-- FIRST_VALUE() - Returns the first value in an ordered set of values.
-- ============================================
SELECT
    "country",
    "year",
    "electricity_generation",

    FIRST_VALUE("electricity_generation") OVER(
        PARTITION BY "country"
        ORDER BY "year"
    ) AS FIRST_GENERATION

FROM CLEAN_ENERGY_DATA

WHERE "country"='India'
LIMIT 20;

-- ============================================
-- LAST_VALUE() - Returns the last value in an ordered set of values.
-- ============================================SELECT
    "country",
    "year",
    "electricity_generation",

    LAST_VALUE("electricity_generation") OVER(
        PARTITION BY "country"
        ORDER BY "year"
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS LAST_GENERATION

FROM CLEAN_ENERGY_DATA

WHERE "country"='India'
LIMIT 20;

-- ============================================
-- NTILE() - Divides an ordered result set into a specified number of roughly equal parts, or "tiles," and assigns a tile number to each row.
-- ============================================
SELECT
    "country",
    "electricity_generation",

    NTILE(4) OVER(
        ORDER BY "electricity_generation" DESC
    ) AS QUARTILE

FROM CLEAN_ENERGY_DATA

WHERE "electricity_generation" IS NOT NULL
LIMIT 50;

-- ============================================
-- PERCENT_RANK() - Calculates the relative rank of a row within a partition of a result set as a percentage.
-- ============================================
SELECT
    "country",
    "electricity_generation",

    PERCENT_RANK() OVER(
        ORDER BY "electricity_generation"
    ) AS PERCENT_RANK

FROM CLEAN_ENERGY_DATA

WHERE "electricity_generation" IS NOT NULL
LIMIT 30;