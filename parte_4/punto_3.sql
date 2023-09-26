select cliente_id, cliente.nombre, sum(total) as ventas_totales
from orden
join cliente on orden.cliente_id = cliente.id
group by cliente_id, cliente.nombre 
order by cliente_id;