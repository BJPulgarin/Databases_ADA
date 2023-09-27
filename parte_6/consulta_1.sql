select c.nombre, categoria_id, avg(precio_unitario) as precio_promedio
from producto p 
join categoria c on c.id = p.categoria_id 
group by categoria_id, c.nombre
order by categoria_id;
