
SELECT *
FROM {{ source('depi_raw', 'DEPI_data') }}
