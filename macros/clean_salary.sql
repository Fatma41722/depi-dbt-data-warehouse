
{% macro clean_salary(column_name) %}
    TRY_CONVERT(
        DECIMAL(18, 2),
        REPLACE(
            REPLACE(LTRIM(RTRIM({{ column_name }})), '$', ''),
            ',',
            ''
        )
    )
{% endmacro %}
