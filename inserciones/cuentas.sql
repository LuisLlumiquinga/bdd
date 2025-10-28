-- Crear un select que traiga el numero de cuenta y el saldo de todas las cuentas

select numero_cuenta, saldo from cuentas

-- Crear un select que traiga los registros entre el dia de hoy hasta dos meses antes

select * from cuentas where fecha_creacion between '28/08/2025' and '28/10/2025'

-- Crear un select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta dos meses antes

select numero_cuenta, saldo from cuentas where fecha_creacion between '28/08/2025' and'28/10/2025'
