{{ config(materialized='table', schema='test') }}

with source_data as (

    select *
    from {{ source('dbt', 'payments') }}

)

select *
from source_data