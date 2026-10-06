with 

source as (

    select * from {{ source('games_may2024_cleaned', 'games_march2025') }}

),

renamed as (

        select * except(
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
    )
    from source

)

select * from renamed