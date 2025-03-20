{{ config(materialized='table') }}

with source_data as (
    SELECT  1 as id, 'a' as name
    union all
    SELECT  2 as id, 'b' as name
    union all
    SELECT  3 as id, null as name
)

select *
from source_data