select * from cuentas
personas pe, estado_civil ec
where
pe.estado_civil_codigo=ec.codigo

select pe.cedula, pe.nombre, pe.apellido, ec.descripcion from 
personas pe, estado_civil ec
where
pe.estado_civil_codigo=ec.codigo
and nombre like'Santiago'


-- USUARIO Y CUENTAS
-- CONSULTA

select c.numero_cuenta, u.nombre from
usuario u, cuentas c
where
u.cedula=c.cedula_propietario
and c.saldo between money(100) and money(1000)

-- SUBCONSULTA
select * from
usuario u, cuentas c
where
u.cedula=c.cedula_propietario
and c.fecha_creacion between '2022-09-21' and '2023-09-21'

select * from persona


-- CLIENTES Y COMPRAS
-- CONSULTA
select nombre, apellido from
clientes
where cedula like '%7%'

-- SUBCONSULTA
select cedula, nombre, apellido from
clientes
where cedula IN (
	select cedula 
	from clientes
	where nombre='Monica'
);

-- ESTUDIANTES Y PROFESORES
-- CONSULTA

select pro.codigo, es.nombre, es.apellido from
estudiantes es, profesores pro
where es.codigo_profesor=pro.codigo
and es.apellido like '%n%'

-- SUBCONSULTA
select * from estudiantes es
where es.codigo_profesor in (
	select codigo from profesores
	where nombre like 'Francisco'
)

select * from prestamo, persona
-- PERSONA Y PRESTAMO
-- CONSULTA
select per.cantidad_ahorrada, pres.monto, pres.garante 
from prestamo pres, persona per
where pres.cedula = per.cedula
and monto between money(100) and money(1000)

-- SUBCONSULTA
select * from persona
where cedula in(
	select  cedula from persona
	where nombre like 'Sean'
)

-- PRODUCTOS Y VENTAS
-- CONSULTA

select p.nombre, p.stock, v.cantidad
from ventas v, productos p
where v.codigo_producto = p.codigo
and p.nombre like '%m%' OR p.descripcion='0'

-- SUBCONSULTA

select nombre, stock from productos
where codigo in(
	select codigo_producto from ventas
	where codigo_producto=5
)

-- TRANSACCIONES Y BANCO
-- CONSULTA
select * from transacciones
where tipo like 'C'
and numero_cuenta between '22001' and '22004'

-- SUBCONSULTA
select * from transacciones
where codigo in(
	select codigo_transaccion from banco
	where codigo_transaccion=1
)

-- VIDEOJUEGOS Y PLATAFORMAS
-- CONSULTA
select * from videojuegos v, plataformas p
where p.codigo_videojuego = v.codigo
and v.descripcion like '%Guerra%' 
and v.valoracion>7 or v.nombre like 'C%'
and v.valoracion>8 and v.nombre like 'D%'

--SUBCONSULTA
select * from plataformas
where codigo_videojuego in(
	select codigo from videojuegos
	where nombre like 'God of Ward'
)

-- REGISTROS DE ENTRADA Y EMPLEADO
-- CONSULTA
select * from registros_entrada re, empleado em
where re.codigo_empleado = em.codigo_empleado
and (re.fecha between '2023-08-01' and '2023-08-31') and (re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00')
or re.fecha between '2023-10-06' and '2023-10-20' and re.cedula_empleado like '08%' and re.hora between '09:00' and '13:00'

select * from registros_entrada, empleado
select * from empleado
-- SUBCONSULTA
select * from registros_entrada
where codigo_registro in(
	select codigo_empleado from empleado
	where codigo_empleado='2201'
)

