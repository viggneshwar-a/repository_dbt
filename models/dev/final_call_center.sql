{{ config(materialized='table') }}

with source_data as (
    CC_CALL_CENTER_SK,
    CC_COMPANY_NAME, 
    cc_call_center_id,
    CC_Name
    FROM {{ source('call_center_table', 'call_center') }}
)

select *
from source_data