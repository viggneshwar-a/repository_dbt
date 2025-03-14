
{{ config(materialized='table') }}
-- Use the `ref` function to select from other models

select customer_id, 
        lower(customer_name) as Name
from {{ ref('my_first_dbt_model') }}
where customer_id<10
