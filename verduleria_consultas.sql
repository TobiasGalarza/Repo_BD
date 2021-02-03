--1
select vendedores.NombreVendedor, ventas.producto, ventas.kilos
from ventas inner join vendedores
on ventas.vendedor = vendedores.IdVendedor


select vendedores.NombreVendedor, ventas.Producto, ventas.Kilos
from ventas, vendedores
where ventas.vendedor = vendedores.IdVendedor

--2
select ventas.Vendedor, productos.NomProducto, ventas.Kilos
from ventas, productos
where ventas.Producto = productos.IdProducto

--3
select vendedores.NombreVendedor, productos.NomProducto, ventas.Kilos
from ventas, vendedores, productos
where ventas.vendedor = vendedores.IdVendedor and ventas.Producto = productos.IdProducto

--4
select NombreVendedor
from vendedores
where IdVendedor = (select top 1 Vendedor from ventas group by Vendedor order by sum(kilos) desc)

--5
select sum(kilos) kilos_tomates_vendidos
from ventas
where Producto = (select idproducto from productos where NomProducto like 'tomates')

--6
select *
from ventas
where kilos > (select avg(kilos) from ventas)

--7

select NomProducto
from productos
where IdProducto = (select top 1 Producto from ventas group by 

select distinct sum(kilos) from ventas where producto in 
--select sum(kilos) from ventas where Producto in 
(select idproducto from productos where IdGrupo = 
(select IdGrupo from grupos where NombreGrupo like 'hortalizas')))


select top 1 Producto from ventas in
(select idproducto from productos, ventas where IdGrupo = 
(select IdGrupo from grupos where NombreGrupo like 'hortalizas')
order by sum(kilos) desc)

select * from ventas
select NomProducto, IdGrupo from productos
select * from grupos