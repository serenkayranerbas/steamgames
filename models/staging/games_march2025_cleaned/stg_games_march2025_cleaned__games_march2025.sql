with 

source as (

    select * from {{ source('games_march2025_cleaned', 'games_march2025') }}

),

renamed as (

    select

    from source

)

select * from renamed