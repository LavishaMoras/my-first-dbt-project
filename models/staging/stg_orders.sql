

{{config(materialized = 'view')}}

select
    order_id,
    customer_id,
    product_id,
    quantity,
    amount,
    upper(trim(order_status)) as order_status,
    order_date,
    updated_at
from {{ source('raw','RAW_ORDERS') }}