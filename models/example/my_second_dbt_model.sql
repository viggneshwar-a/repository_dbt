
-- Use the `ref` function to select from other models

select id, 
        lower(Name) as Name
from {{ ref('my_first_dbt_model') }}
where Name is not null
