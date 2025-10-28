-- Crear select que traiga todos los productos que empiencen con Q

select * from productos where nombre like 'Q%'

-- Crear un select que traiga los productos con una descripcion de null

select * from productos where descripcion is null

-- Crear un select que traiga todos los productos con un precio entre 2 y 3

select * from productos where precio BETWEEN  money(2) and money(3)

