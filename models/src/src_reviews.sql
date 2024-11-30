with raw_reviews as (
    select * from AIRBNB.RAW.RAW_REVIEWS
)

select 
    DATE as review_date,
    COMMENTS as review_text,
    SENTIMENT as review_SENTIMENT,
    LISTING_ID,
    REVIEWER_NAME

from raw_reviews 
    