select s.nombre, sum(o.total) as total_ventas
from orden o
join sucursal s on s.id = o.sucursal_id
group by sucursal_id, s.nombre
order by s.nombre;