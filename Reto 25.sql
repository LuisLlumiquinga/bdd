-- Relacion cuentas con usuario
select AVG(cast(saldo as numeric)) from cuentas
where cedula_propietario='17512'

select tipo_cuenta,count(*) from usuario
group by tipo_cuenta

-- Relacion de clientes con compras
select cedula,SUM(monto) from compras
group by cedula

select fecha_compra, count(*) from compras
where fecha_compra = '2025-11-11'
group by fecha_compra


-- Relacion entre estudiantes y profesores
select codigo_profesor, count(*) as totla_estudiantes from estudiantes
group by codigo_profesor

select ROUND(avg(extract(year from AGE(current_date, fecha_nacimiento))))as edad_promedio from estudiantes


-- Relacion entre persona y prestamo
select cedula, sum(monto) as monto_total_prestamos from prestamo
where cedula='1715893101'
group by cedula


select count(*) as total_personas from persona
where numero_hijos>1


-- Relacion entre productos y ventas
select max(precio) as precio_maximo from productos


select sum(cantidad) as cantidad_total_vendida from ventas


-- Relacion entre transacciones y banco

select count(*) as total_transacciones_credito from transacciones
where tipo like 'C'




select * from transacciones
select * from ventas



-- agregar datos a un campo sin modificar el resto
update persona
set numero_hijos='2'
where cedula='1715893101'


--agregar una columna a una tabla
alter table estudiantes
add column edad int