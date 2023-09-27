select c.nombre as categoria, sum(s.cantidad) as cantidad_en_stock
from stock s
join producto p on p.id = s.producto_id 
join categoria c on c.id = p.categoria_id
group by c.id;
