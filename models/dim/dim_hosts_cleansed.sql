{{
    config(
        materialized = 'view'
    )
}}

with dim_hosts_cleansed as
(
    select * from {{ ref("src_hosts")}}
)

select 
    host_id,
    NVL(host_name, 'Anonymous') as host_name,
    IS_SUPERHOST, CREATED_AT, UPDATED_AT

from dim_hosts_cleansed