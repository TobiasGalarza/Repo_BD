-- 1.Lista el nombre de todos los productos que hay en la tabla producto.
select nombre
from producto;

-- 2.Lista todas las columnas de la tabla producto.
select *
from producto;

-- 3.Lista el nombre de los productos y el precio en USD.
select nombre, precio
from producto;

-- 4.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
select upper(nombre) nombre, precio
from producto;

-- 5.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
select nombre, round(precio) precio
from producto;

-- 6.Lista el código de los fabricantes que tienen productos en la tabla producto.
select fabricante.codigo
from fabricante, producto
where fabricante.codigo = producto.codigo_fabricante;

-- 7.Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
select distinct fabricante.codigo
from fabricante, producto
where fabricante.codigo = producto.codigo_fabricante;

-- 8.Lista los nombres de los fabricantes ordenados de forma ascendente.

-- 9.Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.

-- 10.Devuelve una lista con las 5 primeras filas de la tabla fabricante.
select *
from fabricante
limit 5;

-- 11.Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.

-- 12.Lista el nombre de los productos que tienen un precio menor o igual a 120USD

-- 13.Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
select *
from producto
where codigo_fabricante = (select codigo from fabricante where nombre like 'lenovo');

-- 14.Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
select *
from producto
where precio = (select precio from producto where codigo_fabricante = (select codigo from fabricante where nombre like 'lenovo') limit 1);

-- 15.Lista el nombre del producto más caro del fabricante Lenovo.
select nombre
from producto
where precio = (select precio from producto where codigo_fabricante = (select codigo from fabricante where nombre like 'lenovo') limit 1);

-- 16.Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
