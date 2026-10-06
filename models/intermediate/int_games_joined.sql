{{ config(materialized='table') }}

with may2024 as (

    select *
    from {{ ref('int_may2024') }}

),

march2025 as (

    select * except(discount)
    from {{ ref('int_march2025') }}

),

final as (


select * from march2025
union all
select * from may2024
)

select 
*
from final