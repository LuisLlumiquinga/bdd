-- Seleccionar todos los videojuegos con un nombre que comience con "C"
select * from videojuegos where nombre like 'C%'

-- Seleccionar videojuegos con una valoracion entre 9 y 10
select * from videojuegos where valoracion between 9 and 10

-- Seleccionar los videojuegos con una descripcion de null
select * from videojuegos where descripcion is null