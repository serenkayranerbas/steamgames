{{ config(materialized='table') }}

with games as (

    select
        appid,
        name,
        genres
    from {{ ref('mart_games_master') }}

),

final as (

    select
        appid,
        name,
        trim(genre) as genre

    from games,
    unnest(
        split(
            replace(
                replace(
                    replace(genres, '[', ''),
                    ']', ''
                ),
                "'", ''
            ),
            ','
        )
    ) as genre

)

select *
from final
where genre != ''