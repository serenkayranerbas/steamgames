{{ config(materialized='table') }}

with games as (

    select *
    from {{ ref('int_append_years') }}

),
deduplicated as (

    select
        *,
        row_number() over (
            partition by appid
            order by appid
        ) as rn
    from games

)

select * except(rn)
from deduplicated
where rn = 1