{{ config(materialized='table') }}

WITH tb1 as(
    select
    id,
    user_id,
    order_date
    from {{source('datafeed_shared_schema','raw_orders')}})
select * from tb1
