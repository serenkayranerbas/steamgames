with 

source as (

    select * from {{ source('games_may2024_cleaned', 'games_march2025') }}

),

renamed as (

    select

    from source

)

select * from renamed