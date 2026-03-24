{{  config(materialized = 'incremental',unique_key='HOST_ID')}}

select 
    HOST_ID,
    REPLACE(HOST_NAME, ' ', '_') AS HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_RATE,
    CASE
        WHEN RESPONSE_RATE > 95 THEN 'Very Good'
        WHEN RESPONSE_RATE > 80 THEN 'Good'
        WHEN RESPONSE_RATE > 60 THEN 'Enough'
        ELSE 'Poor'
    END AS RESPONSE_RATE_QUALITY,
    CREATED_AT
from 
    {{ ref('bronze_hosts') }}
          