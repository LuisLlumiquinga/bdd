-- PRODUCTOS
-- Seleccionar todos los productos con stock igual a 10 y precio menor a 10
select * from productos where stock=10 and precio<money(10)

-- Seleccionar los nombres y stock de todos los productos que tengan una "m" en su nombre o tenga un espacio en 
-- blanco en su descripcion
select nombre, stock from productos where nombre like '%m%' or descripcion like '% %'

-- Seleccionar el nombre de todos los productos que tenga null el campo descripcion o tenga un stock de 0
select nombre from productos where descripcion is null or stock=0

-- CUENTAS
-- Seleccionar el numero de cuenta y saldo de todas las cuentas con saldo mayor a 100 y menor a 1000
select numero_cuenta from cuentas where saldo>money(100) and saldo<money(1000)

-- Seleccionar las cuentas entre el dia de hoy hasta hace 1 año
select numero_cuenta from cuentas where fecha_creacion between '29/10/2024' and '29/10/2025'

-- Seleccionar las cuentas con saldo 0 o con una cedula de propietario que termine con 2
select numero_cuenta from cuentas where saldo=money(0) or cedula_propietario like '%2'

-- ESTUDIANTES
-- Seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con "M" o si su apellido terminan en "Z"
select nombre, apellido from estudiantes where nombre like 'M%' or apellido like '%z'

-- Crear un select que traiga los nombres de todos los estudiantes que tenga un numero 32 y empiece con 18 en alguna
-- parte de su cedula
select nombre from estudiantes where cedula like '%32%' and cedula like '18%'

-- Crear un select que traiga los nombres completos de todos los estudiantes cuya cedula termine en 06 o empiece con 17
select nombre, apellido from estudiantes where cedula like '%06' or cedula like '17%'

-- REGISTROS_ENTRADA
-- Seleccione los registros del mes de septiembre, o realizados por las cedulas de pichincha (que inicien con 17)
select * from registros_entrada 
where fecha between '01/09/2025' and '30/09/2025' 
or cedula_empleado like '17%'

-- Seleccione los registros del mes de agosto, realizados por las cedulas de pichincha (que inicien con 17) y realizados
-- entre las 08:00 y 12:00
select * from registros_entrada
where fecha between '01/08/2025' and '31/08/2025'
and cedula_empleado like '17%' 
and hora between '08:00' and '12:00'

-- Seleccione los registros del mes de agosto, realizados por las cedulas de pichicnha (que inicien con 17) y realizados
-- entre las 08:00 y 12:00 o los registros del mes de septiembre, realizados por las cedulas de esmeraldas 
-- (que inicien con 08) y realizados entre las 09:00 y 13:00
select * from registros_entrada
where fecha between '01/08/2025' and '31/08/2025'
and (cedula_empleado like '17%' and hora between '08:00' and '12:00')
or  (cedula_empleado like '08%' and hora between '09:00' and '13:00')

-- VIDEOJUEGOS
-- Listar los registros de videojuegos con un nombre que contengan la letra "C" o una valoracion de 7
select * from videojuegos where nombre like '%C%' or valoracion=7

-- Seleccionar videojuegos con un codigo entre 3 y 7 o una valoracion de 7
select * from videojuegos where (codigo between 3 and 7) or valoracion=7

-- Seleccionar videojuegos de guerra, con una valoracion mayor a 7 y que su nombre empiece con C
-- o los videojuegos con una valoracion mayor a 8 y que su nombre empiece con D
select * from videojuegos where (valoracion>7 and nombre like 'C%')
or (valoracion>8 and nombre like 'D%')

-- TRANSACCIONES
-- Seleccionar transacciones de tipo C realizadas por los clientes con numero de cuentas entre 22001 y 22004
select * from transacciones where tipo='C' and numero_cuenta between '22001' and '22004'

-- Seleccionar transacciones de tipo D que fueron realizadas el 25 de mayo y con el rango de cuentas entre 22007 y 22010
select * from transacciones where tipo='D' 
and fecha='25/05/2025'
and numero_cuenta between '22007' and '220010'

-- Seleccionar todas las transacciones en donde el codigo sea entre 1 y 5, numero de cuenta entre 22002 o 22004
-- que se hayan realizado los dias 26 y 29 de mayo
select * from transacciones where codigo between 1 and 5
and numero_cuenta between '22002' and '22004'
and fecha between '26/05/2025' and '29/05/2025'
