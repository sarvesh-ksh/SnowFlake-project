{% set configs=[
    {
        "table":"AIRBNB.GOLD.OBT",
        "columns" : "gold_obt.BOOKING_ID,gold_obt.LISTING_ID,gold_obt.HOST_ID,gold_obt.TOTAL_AMOUNT,gold_obt.SERVICE_FEE,gold_obt.CLEANING_FEE,gold_obt.ACCOMMODATES,gold_obt.BEDROOMS,gold_obt.PRICE_PER_NIGHT",
        "alias" : "gold_obt"
    },{
        "table":"AIRBNB.GOLD.DIM_LISTINGS",
        columns : "",
        "alias" : "DIM_listings",
        "join_condition" : "gold_obt.LISTING_ID = DIM_listings.LISTING_ID"
    },{
        "table" : "AIRBNB.GOLD.DIM_HOSTS",
        columns : "",
        "alias" : "DIM_hosts",
        "join_condition" : "gold_obt.HOST_ID = DIM_hosts.HOST_ID"
    }
]%}


SELECT 
    {{configs[0]['columns']}}
FROM
    {% for config in configs%}
        {%if loop.first %}
            {{config['table']}} as {{config['alias']}}
        {%else%}
            left join {{config['table']}} as {{config['alias']}}
            on {{config['join_condition']}}
        {%endif%}
    {%endfor%}
