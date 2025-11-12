-- AGREGACION
-- OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
-- COUNT

select * from persona

select count(cedula) from persona

-- AVG - PROMEDIO
select * from persona

select AVG(estatura) from personas

select AVG(cast(cantidad_ahorrada as numeric)) from personas

-- MAX - MIN - SUM
select SUM(estatura) from personas
select MAX(estatura) from personas
select MIN(estatura) from personas

-- GROUP BY

select count(*) from personas
group by estado_civil_codigo
