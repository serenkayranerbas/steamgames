{{ config(materialized='table') }}

with games_march2025 as (

    select * from {{ ref('stg_games_march2025') }}

)

select * from games_march2025