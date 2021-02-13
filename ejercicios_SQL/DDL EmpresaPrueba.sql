create database empresa;
use empresa;

create table empleado (
nombre_empleado varchar(50) primary key,
direccion varchar(100),
ciudad varchar(25)
);

create table empresa (
nombre_empresa varchar(25) primary key,
ciudad varchar(25)
);

create table trabaja (
nombre_empleado varchar(50) primary key,
nombre_empresa varchar(25) not null,
sueldo float not null,
foreign key(nombre_empleado) references empleado(nombre_empleado),
foreign key(nombre_empresa) references empresa(nombre_empresa)
);

create table supervisa (
nombre_empleado varchar(50) primary key,
nombre_supervisor varchar(50),
foreign key(nombre_empleado) references empleado(nombre_empleado)
);

insert into empleado values
('Jones',null, 'Newton');
insert into empleado (nombre_empleado, ciudad) values
('Jones2', 'Newton2');
insert into empleado (nombre_empleado, ciudad) value
('Jones3', 'Newton3'),
('Jones4', 'Newton4');
insert into empleado (ciudad, nombre_empleado) value
('Newton5', 'Jones5');

-- -------------------------------------------------------------------------------

-- Creacion de la tabla 'fabricantes'
create table fabricantes (
codigo int(10) primary key,
nombre varchar(100)
);

-- Creacion de la tabla 'productos'
create table productos (
codigo int(10) primary key,
nombre varchar(100),
predio double,
codigo_fabricante int(10),
foreign key(codigo_fabricante) references fabricantes(codigo)
);

-- Cambiamos el nombre de la tabla 'fabricantes' a 'fabricante'
alter table fabricantes rename fabricante;
-- Cambiamos el nombre de la tabla 'productos' a 'producto'
alter table productos rename producto;

-- Cambiamos el nombre de la columna 'predio' de la tabla 'productos' a 'precio'
alter table productos change predio precio double;

-- Insertamos datos en la tabla 'fabricante'
INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

-- Insertamos datos en la tabla 'producto'
INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);