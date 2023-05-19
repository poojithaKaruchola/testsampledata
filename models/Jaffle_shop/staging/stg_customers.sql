select
    id as customer_id,
    {{ dbt_utils.generate_surrogate_key(['customer_id', 'first_name']) }} as hash_custid,
    first_name,
    last_name

from {{ env_var("DBT_SOURCE_DATABASE", "RAW") }}.jaffle_shop.customers
--where customer_id > {{ var('CustID','20')}}


