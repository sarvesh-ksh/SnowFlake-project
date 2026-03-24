{{
    config(
      materialized = 'incremental',
      unique_key='BOOKING_ID'
    )
}}

select 
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {{multiply('NIGHTS_BOOKED', 'BOOKING_AMOUNT',2)}} as TOTAL_AMOUNT, 
    BOOKING_STATUS,
    CLEANING_FEE,
    SERVICE_FEE,
    CREATED_AT
from {{ ref('bronze_bookings') }}
