create or replace function total_vendido(fecha_venta date) returns numeric as $$
declare
    total numeric(18,2);
begin
    select coalesce(sum(d.cantidad * (
        select p.precio
        from producto p
        where p.id_producto = d.id_producto
    )), 0)
    into total
    from detalle_pedido d
    where d.id_pedido in (
        select pe.id_pedido
        from pedido pe
        where pe.estado = 'pagado' and date(pe.fecha) = fecha_venta
    );

    return total;
end;
$$ language plpgsql;

-- Ejemplo de uso:
-- select total_vendido('2026-03-19');
    