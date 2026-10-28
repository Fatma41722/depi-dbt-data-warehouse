
SELECT
    email,
    COUNT(*) AS email_count
FROM {{ ref('dim_employee') }}
GROUP BY email
HAVING COUNT(*) > 1
