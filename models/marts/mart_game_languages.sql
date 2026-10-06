{{ config(materialized='table') }}

with games as (

    select
        appid,
        name,
        supported_languages
    from {{ ref('mart_games_master') }}

),

final as (

    select
        appid,
        name,
        trim(language) as language

    from games,
    unnest(
        split(
            replace(
                replace(
                    replace(supported_languages, '[', ''),
                    ']', ''
                ),
                "'", ''
            ),
            ','
        )
    ) as language

)

select *
from final
where language != ''