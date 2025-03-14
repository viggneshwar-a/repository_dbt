{% snapshot my_first_dbt_snapshot %}

{{
    config(
        target_schema='my_first_dbt_snapshots',
        unique_key='id',
        strategy='timestamp',
        updated_at='Name'
    )
}}

select * from {{ source('my_source', 'my_first_dbt_model') }}

{% endsnapshot %}