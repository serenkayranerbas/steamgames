with 

source as (

    select * from {{ source('games_may2024_cleaned', 'games_may2024') }}

),

renamed as (

        select * except(
        AppID,
        detailed_description,
        about_the_game,
        short_description,
        header_image,
        website,
        support_url,
        support_email,
        metacritic_url,
        notes,
        screenshots,
        movies
    ),
    AppID as appid 
    from source

),

cleaned as (

    select * replace(
        nullif(pct_pos_total, -1) as pct_pos_total,
        nullif(num_reviews_total, -1) as num_reviews_total,
        nullif(pct_pos_recent, -1) as pct_pos_recent,
        nullif(num_reviews_recent, -1) as num_reviews_recent
    )

from renamed

)
select *
from cleaned