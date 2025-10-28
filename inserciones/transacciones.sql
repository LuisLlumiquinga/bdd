-- Seleccionar todas las transacciones realizadas con un tipo "D"
select * from transacciones where tipo like 'D'

-- Seleccionar todas las transacciones con montos entre 200 y 2000
select * from transacciones where monto between money(200) and money(2000)

-- Seleccionar el codigo, monto, tipo y fecha de transacciones que tengan una fecha diferente de null
select codigo, monto, tipo, fecha from transacciones where fecha is not null