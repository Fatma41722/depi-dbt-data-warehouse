{% test not_negative(model, column_name) %}

SELECT *
FROM {{ model }}
WHERE TRY_CONVERT(
    DECIMAL(18, 2),
    REPLACE(REPLACE(LTRIM(RTRIM({{ column_name }})), '$', ''), ',', '')
) < 0

{% endtest %}