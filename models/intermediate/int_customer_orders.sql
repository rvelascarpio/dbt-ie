select c.customer_id, c.first_name, count(o.order_id) as n_orders
from {{ ref('stg_customers') }} as c
left join {{ ref('stg_orders') }} as o on c.customer_id = o.customer_id
group by 1, 2