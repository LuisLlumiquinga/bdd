-- crea la tabla clientes
drop table clientes

create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	constraint clientes_pk primary key(cedula)
)

--crea la tabla personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk 
foreign key (estado_civil_codigo) 
references estado_civil(codigo)

insert into personas (cedula, nombre, apellido, estado_civil_codigo) 
values ('1715893178', 'Santiago2', 'Mosquera2', 'U')

select * from personas estado_civil

insert into estado_civil(codigo, descripcion) 
values ('U', 'UNION LIBRE'),
('C', 'CASADO'),
('S', 'SOLTERO')

drop table usuario

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

insert into personas (cedula, nombre, apellido, estado_civil_codigo) 
values ('1715893178', 'Santiago2', 'Mosquera2', 'U')

select * from usuario cuentas

--CUENTAS
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'21/08/2022',100),
(25570,17500,'01/09/2022',200),
(25571,17501,'22/10/2022',300),
(25572,17508,'30/11/2022',400),
(25573,17509,'15/12/2022',500),
(25574,17510,'15/01/2023',600),
(25575,17507,'15/02/2023',700),
(25576,17515,'15/03/2023',800),
(25577,17512,'15/04/2023',900),
(25578,17503,'15/05/2023',1000)

--USUARIO
insert into usuario(cedula, nombre, apellido)
values('17504', 'Joseline', 'Morales'),
('17500', 'Andrea', 'Gonzaga'),
('17501', 'Juan', 'Perez'),
('17508', 'Daniela', 'Arcentales'),
('17509', 'Estefania', 'Andrade'),
('17510', 'Gloria', 'Estefan'),
('17507', 'Jose', 'Piedra'),
('17515', 'Paul', 'Loya'),
('17512', 'Carlos', 'Usqueategui'),
('17503', 'Cristian', 'Trujillo')

create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key (cedula) 
)

drop table compras

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

--CLIENTES
insert into clientes (cedula, nombre, apellido)
values('1715892104', 'Joselyne', 'Morales'),
('1750045789', 'Andrea', 'Gonzaga'),
('1750114000', 'Juan', 'Perez'),
('1750814578', 'Daniela', 'Arcentales'),
('7750948788', 'Estefania', 'Andrade'),
('1751001000', 'Monica', 'Estefan'),
('1750744770', 'Jose', 'Piedra'),
('1751545451', 'Paul', 'Loya'),
('1751454542', 'Monica', 'Usqueategui'),
('1750545453', 'Cristian', 'Trujillo')

--COMPRAS
insert into compras (id_compra, cedula, fecha_compra, monto)
values('123', '1715892104', '11/11/2025','100'),
('417', '1750045789', '11/11/2025','100'),
('524', '1750045789', '11/11/2025','100'),
('470', '1751454542', '11/11/2025','100'),
('574', '1751454542', '11/11/2025','100'),
('510', '1751454542', '11/11/2025','100'),
('141', '1715892104', '11/11/2025','100'),
('017', '1751454542', '11/11/2025','100'),
('580', '1751454542', '11/11/2025','100'),
('456', '1715892104', '11/11/2025','100')


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

--PRODUCTOS
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10),
(2,'Shampoo','Savital',2.50,20),
(3,'Deja','Deja',1.50,30),
(4,'Pasta dental','Fortident',3.0,5),
(5,'Tampones','Higiene',2.50,50),
(6,'Pan','null',1.50,50),
(7,'Queso','null',5.50,5),
(8,'Leche','null',2.50,70),
(9,'Jamon','null',1.00,120),
(10,'Coca Cola','null',3.50,300)

--VENTAS
insert into ventas(id_ventas,codigo_producto, fecha_venta, cantidad) 
values (1,1,'11/11/2025',1),
(2,1,'11/11/2025',1),
(3,2,'11/11/2025',1),
(4,2,'11/11/2025',1),
(5,3,'11/11/2025',1),
(6,4,'11/11/2025',1),
(7,4,'11/11/2025',1),
(8,5,'11/11/2025',1),
(9,7,'11/11/2025',1),
(10,8,'11/11/2025',1)

delete from productos
select * from productos

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

--VIDEOJUEGOS
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de Guerra', 9),
(85421, 'Free Fire', 'juego de accion', 7),
(93475, 'Call of Clans', 'juego de Guerra', 10),
(15983, 'Fornite', 'juego de suspenso', 10),
(35784, 'Minecraft','Estrateguia de Guerra', 3),
(54682, 'Tom and Jerry', 'juego de comedia', 8),
(01456, 'Ajedres', 'juego de psicoligia', 6),
(70215, 'God of Ward', 'juego de aprendisaje', 7),
(63240, 'Crash', 'juego de deprote', 9),
(63549, 'Dragon Ball', 'juego de baile', 8)

drop table estudiantes
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

--PROFESORES
insert into profesores(codigo, nombre)
values(1, 'Joselyne'),
(2, 'Daniela'),
(3, 'Francisco'),
(4, 'Juan'),
(5, 'Roberto'),
(6, 'Adrian'),
(7, 'Manuela'),
(8, 'Alejandra'),
(9, 'Paul'),
(10, 'Estefania')

--ESTUDIANTES
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003',1),
(1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',2),
(1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',1),
(1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',5),
(1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',6),
(1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',2),
(1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' ,1),
(1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',3),
(1235476809,'Anabel','Arcentales','WPerlaza18@gmail.com','12/04/2000',5),
(1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',1)

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

--EMPLEADO
insert into empleado (codigo_empleado,nombre,fecha, hora)
values (2201,'Raul','01/08/2023','08:00'),
(2202,'Mario','01/09/2023','09:00'),
(2203,'Roberto','01/10/2023','08:00'),
(2457,'Paul','01/11/2023','10:00'),
(2136,'Marcelo','01/12/2023','11:00'),
(1024,'Anthony','01/08/2023','12:00'),
(1369,'Paula','01/09/2023','13:00'),
(1010,'Mónica','11/10/2023','11:30'),
(1222,'Anabel','21/08/2023','08:40'),
(2222,'Sofía','11/08/2023','09:50')

--REGISTROS_ENTRADA
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12345, '1754416489', '18/08/2023', '8:00',2201),
(12355, '1758254591', '03/09/2023', '13:00',2201),
(12346, '1715974492', '25/10/2023', '13:00',2136),
(12347, '1735642583', '28/11/2023', '8:00',2136),
(12389, '1707416984', '16/12/2023', '8:30',2222),
(12349, '1778541235', '17/11/2023', '10:00',1222),
(12310, '1742158637', '14/10/2023', '13:00',1010),
(12311, '1756321784', '15/09/2023', '09:00',1010),
(12358, '1712546328', '07/08/2023', '12:00',2457),
(12378, '1725785413', '02/08/2023', '09:00',2222)

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

--PERSONAS
insert into persona(cedula, nombre, apellido)
values('1715893101', 'Joselyne', 'Morales'),
('1015147845', 'Daniela', 'Arcentales'),
('1487520154', 'Andrea', 'Gonzaga'),
('1021457878', 'Juan', 'Perez'),
('1122554422', 'Sean', 'Coneri'),
('1700000000', 'Jose', 'Lopez'),
('1744545666', 'Manuel', 'Paredes'),
('1478520147', 'Armando', 'Casas'),
('2145478889', 'Mauricio', 'Andrango'),
('1740254566', 'Pamela', 'Cardenas')

--PRESTAMO
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1715893101', 100, '11/11/2025', '08:00', 'Adrian'),
('1015147845', 200, '11/11/2025', '08:00', 'Adrian'),
('1487520154', 300, '11/11/2025', '08:00', 'Adrian'),
('1021457878', 400, '11/11/2025', '08:00', 'Adrian'),
('1122554422', 500, '11/11/2025', '08:00', 'Adrian'),
('1700000000', 600, '11/11/2025', '08:00', 'Adrian'),
('1744545666', 700, '11/11/2025', '08:00', 'Adrian'),
('1478520147', 800, '11/11/2025', '08:00', 'Adrian'),
('2145478889', 900, '11/11/2025', '08:00', 'Adrian'),
('1740254566', 1000, '11/11/2025', '08:00', 'Adrian')


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

delete from transacciones
--TRANSACCIONES
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(22001, '75369', 200, 'C', '20/09/2023', '23:30'),
(53147, '32102', 500.65, 'D', '15/06/2022', '17:55'),
(22002, '21001', 1600, 'C', '17/05/2021', '16:37'),
(32165, '51437', 1050, 'D', '25/04/2020', '15:48'),
(78542, '02147', 300, 'D', '20/03/2019', '22:19'),
(22003, '32015', 400, 'C', '20/03/2019', '13:55'),
(1, '85214', 600, 'D', '07/12/2015', '20:14'),
(54193, '96325', 800, 'D', '06/11/2012', '11:00'),
(95124, '74125', 900, 'D', '23/10/2002', '9:00'),
(22004, '85213', 2000, 'C', '11/09/1999', '7:30')

--BANCO
insert into banco(codigo_banco, codigo_transaccion, detalle)
values(1, 1, 'Deposito'),
(2,22003, 'Credito'),
(3, 95124, 'Retiro'),
(4, 54193, 'Retiro'),
(5, 78542, 'Retiro'),
(6, 32165, 'Retiro'),
(7, 22002, 'Credito'),
(8, 53147, 'Retiro'),
(9, 22001, 'Credito'),
(10, 22004, 'Credito')



