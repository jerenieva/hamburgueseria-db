alter table cliente drop constraint pk_cliente primary key (id_cliente);
alter table producto drop constraint pk_producto primary key (id_producto);
alter table pedido drop constraint pk_pedido primary key (id_pedido);
alter table detalle_pedido drop constraint pk_detalle_pedido primary key (id_detalle);

alter table pedido drop constraint fk_pedido_cliente foreign key (cliente_id) references cliente(id_cliente);
alter table detalle_pedido drop constraint fk_detalle_pedido_cliente foreign key (id_cliente) references pedido(id_pedido);
alter table detalle_pedido drop constraint fk_detalle_pedido_pedido foreign key (pedido_id) references pedido(id_pedido);
alter table detalle_pedido drop constraint fk_detalle_pedido_producto foreign key (producto_id) references producto(id_producto);