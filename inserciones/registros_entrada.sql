-- Seleccionar todas las cedulas de empleado, fecha y hora de los registros de entrada

select cedula_empleado, fecha, hora from registros_entrada

-- Seleccionar los registros de entrada que esten entre las 07:00 y 14:00

select * from registros_entrada where hora between '07:00' and '14:00'

-- Seleccionar los registros de entrada que tengan horas superiores a 08:00

select * from registros_entrada where hora>'08:00'

