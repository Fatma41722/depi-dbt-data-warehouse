
WITH distinct_countries AS (
    SELECT DISTINCT
        LTRIM(RTRIM(country)) AS country
    FROM {{ ref('stg_employees') }}
    WHERE country IS NOT NULL
)

SELECT
    ROW_NUMBER() OVER (ORDER BY country) AS country_key,
    country
FROM distinct_countries
