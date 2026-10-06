{{ config(materialized='table') }}

with games_may2024 as (

    select * from {{ ref('stg_games_may2024') }}

)

select * from games_may2024

