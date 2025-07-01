with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id,
        customer,
        ordered_at
    from source
)
select * from renamed