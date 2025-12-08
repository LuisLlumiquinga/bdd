-- ELIMINACION DE DB EXISTENTES
drop table if exists prestamos;
drop table if exists libros;
drop table if exists generos;
drop table if exists autores;

-- CREACION DE TABLAS
create table autores(
	id_autor serial,
	nombre varchar(50) not null,
	fecha_nacimiento date not null,
	nacionalidad varchar(50) not null,
	constraint autores_pk primary key (id_autor)
);

create table generos(
	id_genero serial,
	nombre varchar(50) not null,
	constraint generos_pk primary key(id_genero)
);

create table libros(
	id_libro serial,
	titulo varchar(50) not null,
	autor_id int not null,
	genero_id int not null,
	anio_publicacion int not null,
	estado_disponible boolean not null,
	constraint libros_pk primary key(id_libro),
	constraint autores_fk foreign key (autor_id) references autores(id_autor),
	constraint generos_fk foreign key (genero_id) references generos(id_genero)
);

create table prestamos(
	id_prestamos serial,
	libro_id int not null,
	nombre_usuario varchar(50) not null,
	fecha_prestamo date not null,
	fecha_devolucion date not null,
	constraint prestamos_pk primary key(id_prestamos),
	constraint libros_fk foreign key (libro_id) references libros(id_libro)
);

-- INSERCION DE DATOS
-- TABLA AUTORES
insert into autores(nombre, fecha_nacimiento, nacionalidad)
values ('Daniela', '30/08/2000', 'Ecuatoriana'),
('Luis', '04-01-1989', 'Ecuatoriana'),
('Andrea', '2-2-1999', 'Ecuatoriana'),
('Gonzales', '3-3-2000', 'Peruana'),
('Paredes', '4-4-1990', 'Colombiana');


-- TABLA GENEROS LITERARIOS
insert into generos(nombre)
values('Poesia'),
('Novelas'),
('Ciencia Ficcion'),
('Arte'),
('Comedia');


-- TABLA LIBROS
insert into libros(titulo, autor_id, genero_id, anio_publicacion, estado_disponible)
values ('La Odisea', 1, 1, 1600, true),
('El platero', 2, 2, 1700, true),
('Huasipungo', 3, 3, 1800, true),
('El poder de la palabra', 4, 4, 1900, true),
('Decodificacion con PNL', 5, 5, 2000, true),
('Memento Mori', 1, 1, 2001, true),
('Movi Dick', 2, 2, 20003,  true),
('Harry Potter', 3, 3, 2002, true),
('El principito', 4, 4, 2004, true),
('Rapuncel', 5, 5, 2005, true);

-- update libros set titulo='Prueba modificada', autor_id=2, genero_id=2, anio_publicacion=2023, estado_disponible=false where id_libro=13
select * from libros

-- TABLA PRESTAMOS
insert into prestamos(libro_id, nombre_usuario, fecha_prestamo, fecha_devolucion)
values(1, 'Daniela Morales', '10/12/2025', '14/12/2025'),
(2, 'Luis Llumiquinga', '10/8/2025', '10/9/25'),
(3, 'Juan Peres', '2/2/2025', '2/4/2025'),
(4, 'Maria Parra', '3/3/2025', '3/4/2025'),
(5, 'Julio Matovelle', '4/4/2025', '4/5/2025'),
(6, 'Esteban Paz', '5/5/2025', '5/6/2025'),
(7, 'Aurora Romero', '6/6/2025', '7/7/2025'),
(8, 'Claudia Paredes', '7/7/2025', '8/8/2025'),
(9, 'Alex Rodriguez', '8/8/2025', '9/9/2025'),
(10, 'Jose Puebla', '9/9/2025', '10/10/2025');

update prestamos set libro_id=5, nombre_usuario='Nombre modificado', fecha_prestamo='12-12-2012', fecha_devolucion='1-1-2013' where id_prestamos=13

select * from libros;
select * from autores;
select * from generos;
select * from prestamos;

select * from prestamos p, libros l, autores a, generos g
where p.libro_id=l.id_libro
and l.autor_id=a.id_autor
and l.genero_id=g.id_genero

