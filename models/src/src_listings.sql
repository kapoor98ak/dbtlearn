WITH raw_listing AS (
    SELECT * FROM AIRBNB.RAW.RAW_LISTINGS
)

SELECT 
    id AS listing_id,
    name AS listing_name,
    LISTING_URL,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    host_id,
    PRICE AS PRICE_STR,
    CREATED_AT,
    UPDATED_AT
FROM
    raw_listing