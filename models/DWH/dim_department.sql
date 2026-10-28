
WITH distinct_departments AS (
    SELECT DISTINCT
        LTRIM(RTRIM(department)) AS department
    FROM {{ ref('stg_employees') }}
    WHERE department IS NOT NULL
)

SELECT
    ROW_NUMBER() OVER (ORDER BY department) AS department_key,
    department
FROM distinct_departments
