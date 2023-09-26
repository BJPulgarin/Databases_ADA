select sucursal_id, sucursal.nombre, sum(cantidad) as cantidad_total
from stock
join sucursal on stock.sucursal_id = sucursal.id
group by sucursal_id, sucursal.nombre
order by sucursal_id;