create table cliente (
    id_cliente serial,
    nombre text,
    email text,
    telefono char(12)
);

create table producto (
    id_producto serial,
    nombre text,
    precio numeric(10,2)
);

create table pedido (
    id_pedido serial,
    id_cliente int,
    fecha timestamp,
    estado char(10), -- pendiente, pagado
    medio_pago char(13) -- transferencia, efectivo
);

create table detalle_pedido (
    id_detalle serial,
    id_pedido int,
    id_producto int,
    cantidad int
);



