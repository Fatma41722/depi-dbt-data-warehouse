
WITH distinct_genders AS (
    SELECT DISTINCT
        LTRIM(RTRIM(gender)) AS gender
    FROM {{ ref('stg_employees') }}
    WHERE gender IS NOT NULL
)

SELECT
    ROW_NUMBER() OVER (ORDER BY gender) AS gender_key,
    gender
FROM distinct_genders
