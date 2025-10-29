-- PRODUCTOS
-- elimina todos los productos donde la descripcion sea null
delete from productos where descripcion is null


-- CUENTAS
-- Elimina todas las cuentas cuya cedula_propietario empiece por 10
delete from cuentas where cedula_propietario like '10%'

-- ESTUDIANTES
-- Elimina todos los estudiantes que tenga una cedula que termina por 05
delete from estudiantes where cedula like '%05'

-- REGISTROS_ENTRADA
-- Elimina todos los registros del mes de junio
delete from registros_entrada where fecha between '01/06/2025' and '30/06/2025'

-- VIDEOJUEGOS
-- Elimina los videojuegos cuya valoracion sea menor que 7
delete from videojuegos where valoracion<7

-- TRANSACCIONES
-- Elimina las transferencias que se hayan hecho entre las 14:00 y 18:00 del mes de agosto del año actual
delete from transacciones 
where fecha between '01/08/2025' and '31/08/2025'
and hora between '14:00' and '18:00'

