{{config(materialized = 'incremental')}}

SELECT * FROM {{ source('staging', 'hosts') }}

{% if is_incremental() %}
    where CREATED_AT >(
        select COALESCE(max(CREATED_AT),'1990-01-01') 
        from {{ this }})
{%endif%}