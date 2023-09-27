select c.nombre, sum(o.total) as monto_compras
from cliente c 
join orden o 
on o.cliente_id = c.id
group by o.cliente_id, c.nombre
order by monto_compras desc 
limit 1;