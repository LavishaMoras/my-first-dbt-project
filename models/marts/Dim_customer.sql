

{{config (materialized = 'table')}}

select 
      customer_id,
    customer_name,
    city,
    country,
    customer_status
    from {{ref ( 'stg_customers')}}