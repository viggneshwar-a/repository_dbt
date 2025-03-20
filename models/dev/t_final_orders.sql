{{ config(materialized='table') }}

with source_data as (
    SELECT O_ORDERKEY as order_id
        , O_TOTALPRICE as order_amount
        , O_ORDERDATE as order_date
        , case when O_ORDERSTATUS='O' then 'Open' 
            when O_ORDERSTATUS='P' then 'Processing'
            when O_ORDERSTATUS='F' then 'Fulfilled' end as order_status
        , modified_date
        , _fivetran_deleted as is_deleted
    FROM {{ source('final_order', 'fact_orders') }}
)

select *
from source_data