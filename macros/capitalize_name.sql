{% macro capitalize_name(column_name) %}
    UPPER(LEFT({{ column_name }}, 1))
    + LOWER(SUBSTRING({{ column_name }}, 2, LEN({{ column_name }})))
{% endmacro %}