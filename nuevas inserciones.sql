select * from personas

insert into personas(cedula, nombre, apellido, estado_civil_codigo)
values('1700893101', 'Rosalia', 'Andrade', 'S')

delete from personas where cedula='1700893101'

select * from   productos

delete from ventas where id_ventas=4
delete from productos where codigo=2

--PRODUCTOS
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20)

--VENTAS
insert into ventas(id_ventas,codigo_producto, fecha_venta, cantidad) 
values (4,2,'11/11/2025',1)