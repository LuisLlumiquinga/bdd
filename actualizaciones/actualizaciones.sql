-- PRODUCTOS
-- Actualizar el stock a 0 en todos los productos donde la descripcion sea null
update productos set stock=0 where descripcion is null

-- CUENTAS
-- Actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece por 17
update cuentas set saldo=0 where cedula_propietario like '17%'

-- ESTUDIANTES
-- Actualizar el apellido por Hernandez a todos los estudiantes que tengan una cedula que empiece por 17
update estudiantes set apellido='Hernandez' where cedula like '17%'

-- REGISTROS_ENTRADA
-- Actualiza todas las cedulas de registros_entrada por "082345679" para todos los registros del mes de agosto
update registros_entrada set cedula_empleado='082345679' where fecha between '01/08/2025' and '31/08/2025'

-- VIDEOJUEGOS
-- Actualiza todas las descripciones de los videojuegos cuya valoracion sea mayor que 9 por "Mejor pnteado"
update videojuegos set descripcion='Mejor punteado' where valoracion>9

-- TRANSACCIONES
-- Actualiza Tipo de todos los registros que tengan una trasaccion mayor a 100 y menor que 500, que se hayan llevado
-- a cabo el mes de septiembre con horas entre 14:00 y 20:00, por "T"
update transacciones set tipo='T' 
where monto>money(100) 
and monto<money(500) 
and hora between '14:00' and '20:00'



