-- ELIMINACION DE DB EXISTENTES
drop table if exists historial_movimientos;
drop table if exists productos;
drop table if exists categorias;

-- CREACION DE DB
create table productos(
	id char(5) not null,
	nombre varchar(50) not null,
	precio_venta money not null,
	precio_compra money not null,
	id_categoria char(4) not null,
	constraint productos_pk primary key (id)
	constraint categorias_fk foreign key (id_categorias) references categoria(id)
)

create table categorias(
	id char(4) not null,
	nombre varchar(50) not null,
	constraint categorias_pk primary key (id)
)

create table historial_movimientos(
	id serial not null,
	id_producto char(5) not null,
	cantidad int not null,
	fecha_movimiento timestamp not null,
	constraint historial_movimientos_pk primary key (id),
	constraint productos_fk foreign key (id_producto) references productos(id)
)

-- INSERCION DE DATOS

-- TABLA CATEGORIAS
insert into categorias(id, nombre)
values('C001', 'Bebidads'),
('C002', 'Snacks'),
('C003', 'Golosinas')

-- TABLA PRODUCTOS
insert into productos(id, nombre, precio_venta, precio_compra, id_categoria)
values('P0001', 'Coca cola 300 ml', 0.7, 0.5, 'C001'),
('P0002', 'Coca cola 1000 ml', 1, 0.8, 'C001'),
('P0003', 'Doritos 50g', 0.5, 0.42, 'C002'),
('P0004', 'Manicho', 0.25, 0.21, 'C003'),
('P0005', 'Tango', 0.5, 0.42, 'C003')

-- TABLA HISTORIAL_MOVIMIENTOS
insert into historial_movimientos(id_producto, cantidad, fecha_movimiento)
values('P001', 10, '28/10/2020 9:45'),
('P002', -3, '28/10/2020 10:49'),
('P001', 5, '28/10/2020 12:23'),