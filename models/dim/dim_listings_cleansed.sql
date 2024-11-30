{{
    config(
        materialized = 'view'
    )
}}


with src_listings as (
    select * from {{ ref("src_listings")}}
)

select 
    listing_id,
    listing_name,
    room_type,
    case 
        when MINIMUM_NIGHTS = 0 then 1
        else MINIMUM_NIGHTS
    end 
    as MINIMUM_NIGHTS,
    host_id,
    replace(PRICE_STR, '$', '')::number(10,2) as PRICE,
    CREATED_AT,
    UPDATED_AT
from src_listings
