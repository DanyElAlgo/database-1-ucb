use ucb_verduleros

select Productos.*, Grupos.*
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and Grupos.NombreGrupo = 'Verduras'

select Productos.*, Grupos.*
from Productos, Grupos
where Productos.IdGrupo = Grupos.IdGrupo and Productos.Precio >= 2

--ordenar una columna de menor a mayor
select *
from Vendedores
order by FechaNac asc

--mostrar menos columnas
select NombreVendedor, FechaAlta, FechaNac
from Vendedores

select Vendedores.NombreVendedor, Productos.NomProducto, Ventas.Fecha, Ventas.Kilos
from Ventas, Productos, Vendedores
where Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor
order by Vendedores.IdVendedor

--ventas de solo tomates
select Vendedores.NombreVendedor, Productos.NomProducto, Ventas.Fecha, Ventas.Kilos
from Ventas, Productos, Vendedores
where Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor
and Productos.NomProducto = 'Tomates'
order by Vendedores.IdVendedor

--ventas de federico
select Vendedores.NombreVendedor, Productos.NomProducto, Ventas.Fecha, Ventas.Kilos
from Ventas, Productos, Vendedores
where Ventas.[Cod Producto] = Productos.IdProducto
and Ventas.[Cod Vendedor] = Vendedores.IdVendedor
and Vendedores.NombreVendedor = 'Federico'
order by Fecha asc

--obtener nombre de mejor vendedor y su cantidad de ventas, considerando bs, o sea, cuantos bs en total se vendió.
select Vendedores.NombreVendedor, Ventas.Kilos, Productos.Precio, 
from Ventas, Productos, Vendedores
where Productos.IdProducto = Ventas.[Cod Producto]
and Vendedores.IdVendedor = Ventas.[Cod Vendedor]
order by Ventas.Kilos * Productos.Precio asc

--incompleto