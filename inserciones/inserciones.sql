--Crear y ejecutar 5 inserts con todos los campos de la tabla PRODUCTOS

insert into productos(codigo, nombre, descripcion, precio, stock)
values(123, 'jabones', 'aseo personal', 1, 150)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(124, 'papel higenico', 'aseo personal', 0.50, 100)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(125, 'camisas', 'ropa de hombre', 22, 180)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(126, 'impresora', 'computacion', 180, 25)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(127, 'esfero', 'utiles escolares', 1, 500)

--Crear y ejecutar 3 inserts solo con los campos obligatorios de la tabla PRODUCTOS

insert into productos(codigo, nombre, precio, stock)
values(128, 'parlante', 15, 200)

insert into productos(codigo, nombre, precio, stock)
values(129, 'alcohol', 2, 140)

insert into productos(codigo, nombre, precio, stock)
values(130, 'celular', 125, 40)

--Crear y ejecutar 10 inserts en la tabla CUENTAS

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values(12345, 12345, '28/10/2025', 40),
(12335, 12346, '27/1/2025', 20.20),
(12325, 12347, '26/2/2025', 440),
(12315, 12348, '25/3/2025', 240),
(12385, 12349, '24/4/2025', 450),
(12395, 12350, '23/5/2025', 0),
(12310, 12351, '22/6/2025', 250),
(12311, 12352, '21/7/2025', 25),
(12312, 12353, '22/8/2025', 258.4),
(12313, 12354, '19/9/2025', 548.40)

--Crear y ejecutar 8 inserts en la tabla ESTUDIANTES

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values(1234567890, 'Juan', 'Perez', 'jperez@gmail.com', '04/01/1989'),
(1234567891, 'Stiven', 'Merino', 'smerino@gmail.com', '12/10/1985'),
(1234567892, 'Daniela', 'Morales', 'dmorales@gmail.com', '30/08/2000'),
(1234567893, 'Joselyne', 'Arcentales', 'jarcentales@gmail.com', '24/05/2004'),
(1234567894, 'Andrea', 'Gonzaga', 'agonzaga@gmail.com', '15/04/2003'),
(1234567895, 'Alexandra', 'Rojano', 'arojano@gmail.com', '13/01/2000'),
(1234567896, 'Fernanda', 'Yepez', 'fyepez@gmail.com', '14/02/1999'),
(1234567897, 'Pedro', 'Olmedo', 'polmedo@gmail.com', '04/02/1998')

--Crear y ejecutar 10 inserts en la tabla REGISTROS_ENTRADA

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(258, 1470258036, '28/10/2025', '11:43'),
(259, 1470258047, '29/10/2025', '11:52'),
(260, 1470258058, '27/10/2025', '11:51'),
(261, 1470258069, '26/10/2025', '11:50'),
(262, 1470258079, '25/10/2025', '11:49'),
(263, 1470258089, '24/10/2025', '11:48'),
(264, 1470258099, '23/10/2025', '11:47'),
(265, 1470258100, '22/10/2025', '11:46'),
(266, 1470258111, '21/10/2025', '11:45'),
(267, 1470258122, '20/10/2025', '11:44')

--Crear y ejecutar 5 inserts con todos los campos de la tabla VIDEOJUEGOS

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(963, 'Metal Slug', 'Juego para play 2', 3),
(964, 'Mortal Kombat', 'Juego para play 3', 4),
(965, 'Roblox', 'Juego para xbox', 5),
(966, 'Fif 2025', 'Juego para play 5', 6),
(967, 'Animaniacs', 'Juego para PC', 7)

--Crear y ejecutar 3 inserts solo con los campos obligatorios de la tabla VIDEOJUEGOS

insert into videojuegos(codigo, nombre, valoracion)
values(968, 'Armagedon', 3),
(969, 'Patos', 5),
(970, 'Final Fantasy', 8)

--Crear y ejecutar 10 inserts con todos los campos de la tabla TRANSACCIONES 
--Los valores permitidos en tipo son 'C' o 'D'

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(456, 54631, 31, 'C', '28/10/2025', '14:22'),
(457, 54632, 1, 'D', '27/10/2025', '14:14'),
(458, 54633, 101, 'D', '2/06/2025', '13:05'),
(459, 54634, 24.5, 'D', '25/04/2025', '11:02'),
(460, 54635, 36.9, 'C', '28/02/2025', '11:12'),
(461, 54636, 1000, 'D', '15/05/2025', '15:55'),
(462, 54637, 350, 'D', '06/06/2025', '16:47'),
(463, 54638, 3654, 'D', '13/07/2025', '12:36'),
(464, 54639, 9654, 'C', '18/09/2025', '16:24'),
(465, 54640, 12, 'D', '30/10/2025', '08:02')

select * from transacciones

