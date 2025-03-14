{% snapshot my_first_dbt_snapshot %}

{{
    config(
        target_schema='my_first_dbt_snapshots',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='customer_name'
    )
}}

select * from {{ source('my_source', 'my_first_dbt_model') }}

{% endsnapshot %}