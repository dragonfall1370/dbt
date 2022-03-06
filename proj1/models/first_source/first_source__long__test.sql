
{{ config(materialized='table') }}

with test_table as (
    select *
    from {{ source('first_source', 'ttable') }}
),

final as (
    select *
    from test_table
)

select * from final