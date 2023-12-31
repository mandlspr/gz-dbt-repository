select 
    *
    , ROUND((quantity * purchase_price),2) as purchase_cost
    , ROUND(revenue - (quantity * purchase_price)
    ,2

    ) as margin
from
{{ref('stg_raw__sales')}}
JOIN
{{ref('stg_raw__product')}}
using (products_id)