
{{config (materialised = 'view')}}

select
    customer_id,
    customer_name,
    city,
    country,
    customer_status,
    updated_at
from {{source ('raw', 'RAW_CUSTOMERS')}}