select flavor
from first_half
group by 1
order by total_order desc,shipment_id