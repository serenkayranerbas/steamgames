{{ config(materialized='table') }}

with games as (

    select
        appid,
        name,
        categories
    from {{ ref('mart_games_master') }}

),

final as (

    select
        appid,
        name,
        trim(categories) as categories

    from games,
    unnest(
        split(
            replace(
                replace(
                    replace(categories, '[', ''),
                    ']', ''
                ),
                "'", ''
            ),
            ','
        )
    ) as categories

)

select *
from final
where categories != ''