-- 1.Obtener la lista de las ventas, pero con el nombre de la persona que lo vende en lugar de su identificador.
select vendedores.NombreVendedor, ventas.producto, ventas.kilos
from ventas inner join vendedores
on ventas.vendedor = vendedores.IdVendedor
;

select vendedores.NombreVendedor, ventas.Producto, ventas.Kilos
from ventas, vendedores
where ventas.vendedor = vendedores.IdVendedor
;

-- 2.Obtener la lista de las ventas pero con el nombre del producto en lugar del código.
select ventas.Vendedor, productos.NomProducto, ventas.Kilos
from ventas, productos
where ventas.Producto = productos.IdProducto
;

-- 3.Obtener la lista de las ventas pero con el nombre del producto y quién lo vendió.
select vendedores.NombreVendedor, productos.NomProducto, ventas.Kilos
from ventas, vendedores, productos
where ventas.vendedor = vendedores.IdVendedor and ventas.Producto = productos.IdProducto
;
/*
-- 4.Obtener el nombre de quien más kilos vendió.
select NombreVendedor
from vendedores
where IdVendedor = (select top 1 Vendedor from ventas group by Vendedor order by sum(kilos) desc)
;*/

-- 5.Cuántos Kilos de Tomates se han vendido.
select sum(kilos) kilos_tomates_vendidos
from ventas
where Producto = (select idproducto from productos where NomProducto like 'tomates')
;

-- 6.Obtener todos los datos de cada venta, que haya superado el promedio de kilos vendidos en total.
select *
from ventas
where kilos > (select avg(kilos) from ventas)
;

-- 7.Obtener cuál fue el producto más vendido del grupo de "Hortalizas"
select NomProducto
from productos
where IdProducto = 
(select Producto from ventas where Producto in
(select idproducto from productos where IdGrupo = 
(select IdGrupo from grupos where NombreGrupo like 'hortalizas'))
group by Producto
order by sum(Kilos) desc
limit 1)
;
/*
-- 8.Obtener los datos de la persona que menos kilos vendió, e informar el nombre del producto y del grupo al que corresponde esa venta.
select top 1 vendedores.*, productos.NomProducto, grupos.NombreGrupo
from vendedores, ventas, productos, grupos
where ventas.Vendedor = vendedores.IdVendedor and
ventas.Producto = productos.IdProducto and
productos.IdGrupo = grupos.IdGrupo
order by ventas.Kilos
;
*/
-- 9.Obtener los totales de ventas por producto.
select productos.NomProducto, sum(ventas.Kilos) totales_de_ventas
from ventas, productos
where productos.IdProducto = ventas.Producto
group by Producto
order by sum(ventas.Kilos)
;

-- 10.Idear una consulta que te parece interesante para informar a quien administra la Verdulería online.
-- cuanto representa las ventas de cada grupo con respecto al total de ventas.
select distinct nombregrupo, sum(kilos)
from grupos, ventas
group by producto