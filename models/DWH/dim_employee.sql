
SELECT
    e.ID AS employee_key,
    e.first_name,
    e.last_name,
    e.email,
    e.DOB,
    e.salary,
    g.gender_key,
    c.country_key,
    d.department_key
FROM {{ ref('stg_employees') }} AS e
LEFT JOIN {{ ref('dim_gender') }} AS g
    ON e.gender = g.gender
LEFT JOIN {{ ref('dim_country') }} AS c
    ON e.country = c.country
LEFT JOIN {{ ref('dim_department') }} AS d
    ON e.department = d.department
