

{{config(materialized = 'ephemeral')}}

select

    o.order_id,
    o.order_date,
    o.order_status,
    o.quantity,
    o.amount,

    c.customer_id,
    c.customer_name,
    c.city,
    c.country,

    p.product_id,
    p.product_name,
    p.category,
    p.price

    from {{ref ('stg_orders')}} o 
    join {{ref ('stg_customers')}} c
    on o.customer_id = c.customer_id

    join {{ref('stg_products')}} p
    on o.product_id = p.product_id
    