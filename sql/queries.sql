-- productos más vendidos
select id_producto, sum(cantidad)
from detalle_pedido
group by id_producto;

-- pedidos pagados
select *
from pedido
where estado = 'pagado';