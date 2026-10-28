

SELECT
    ID,
    {{ capitalize_name('first_name') }} AS first_name,
    {{ capitalize_name('last_name') }} AS last_name,
    LTRIM(RTRIM(gender)) AS gender,
    LOWER(LTRIM(RTRIM(email))) AS email,
    DOB,
    {{ clean_salary('salary') }} AS salary,
    LTRIM(RTRIM(department)) AS department,
    LTRIM(RTRIM(country)) AS country
FROM {{ ref('ODS') }}
