create table usuario(
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
)

create table cuentas(
	numero_cuenta char(5) not null,
    cedula_propietario char(5) not null,
    fecha_creacion date not null,
    saldo money not null,
    constraint cuentas_pk primary key(numero_cuenta)    
)

alter table cuentas
add constraint cuentas_cedula_propietario_fk 	--nombre registro FK
foreign key (cedula_propietario)   --nombre de la columna
references usuario(cedula)			-- codigo de la tabla


create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key (cedula) 
)

create table compras(
	id_compra int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra)
)

alter table compras
add constraint compras_cedula_clientes_fk 	--nombre registro FK
foreign key (cedula)   --nombre de la columna
references clientes(cedula)			-- codigo de la tabla

create table productos(
	codigo int not null,
    nombre varchar(50) not null,
    descripcion varchar(200),
    precio money not null,
    stock int not null,
    constraint productos_pk primary key(codigo)
)

create table ventas(
	id_ventas int not null,
    codigo_producto int not null,
    fecha_venta date not null,
    cantidad int not null,
    constraint ventas_pk primary key(id_ventas)
)

alter table ventas
add constraint ventas_codigo_producto_clientes_fk 	--nombre registro FK
foreign key (codigo_producto)   --nombre de la columna
references productos(codigo)			-- codigo de la tabla

create table videojuegos(
	codigo int not null,
    nombre varchar(100) not null,
    descripcion varchar(300),
    valoracion int not null,
    constraint videojuegos_pk primary key(codigo)
)

create table plataformas(
	id_plataforma int not null,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int not null,
    constraint plataformas_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_codigo_videojuegos_fk 	--nombre registro FK
foreign key (codigo_videojuego)   --nombre de la columna
references videojuegos(codigo)			-- codigo de la tabla

create table estudiantes(
	cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) not null,
    fecha_nacimiento date not null,
	codigo_profesor int not null,
    constraint estudiantes_pk primary key(cedula)
)

create table profesores(
	codigo int not null,
    nombre varchar(50) not null,    
    constraint profesores_pk primary key(codigo)
)

alter table estudiantes
add constraint estudiantes_codigo_profesores_fk 	--nombre registro FK
foreign key (codigo_profesor)   --nombre de la columna
references profesores(codigo)			-- codigo de la tabla

create table registros_entrada(
	codigo_registro int not null,
    cedula_empleado char(10) not null,
    fecha date not null,
    hora time not null,
	codigo_empleado int not null,
    constraint registros_entrada_pk primary key(codigo_registro)
)

create table empleado(
	codigo_empleado int not null,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null,
    constraint empleado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add constraint registros_entrada_cod_empleado_fk 	--nombre registro FK
foreign key (codigo_empleado)   --nombre de la columna
references empleado(codigo_empleado)			-- codigo de la tabla

create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key (cedula)
)

create table prestamo(
	cedula char(10) not null,
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula)
)

alter table prestamo
add constraint prestamo_cedula_persona_fk 	--nombre registro FK
foreign key (cedula)   --nombre de la columna
references persona(cedula)			-- codigo de la tabla

create table transacciones(
	codigo int not null,
    numero_cuenta char(5) not null,
    monto money not null,
    tipo char(1) not null,
    fecha date not null,
    hora time not null,
    constraint transacciones_pk primary key(codigo)
)

create table banco(
	codigo_banco int not null,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_codigo_transaccion_fk 	--nombre registro FK
foreign key (codigo_transaccion)   --nombre de la columna
references transacciones(codigo)			-- codigo de la tabla

