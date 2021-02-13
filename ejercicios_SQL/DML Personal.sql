-- 1. Obtener los datos completos del Personal.
select *
from empleado;

-- 2. Obtener los datos completos de los departamentos
select *
from departamento;

-- 3. Obtener los datos de personal con cargo 'Secretaria'.
select *
from empleado
where cargoE like 'secretari%';

-- 4. Obtener el nombre y salario de los/las empleados/as.
select nomEmp, salEmp
from empleado
where cargoE not like 'Jefe%';

-- 5. Obtener los datos de vendedores, ordenado por nombre.
select *
from empleado
where cargoE = 'vendedor'
order by nomEmp;

-- 6. Listar el nombre de los departamentos
select distinct nombreDpto
from departamento;

-- 7. Listar el nombre de los departamentos, ordenado por nombre
select distinct nombreDpto
from departamento
order by nombreDpto;

-- 8. Listar el nombre de los departamentos, ordenado por ciudad
select nombreDpto
from departamento
order by ciudad;

-- 9. Listar el nombre de los departamentos, ordenado por ciudad, en orden inverso
select nombreDpto
from departamento
order by ciudad desc;

-- 10. Obtener el nombre y cargo del personal, ordenado por salario
select NomEmp, cargoE
from empleado
order by salEmp;

-- 11. Listar los salarios y comisiones del personal del departamento 2000
select salEmp, comisionE
from empleado
where codDepto = '2000';

-- 12. Listar los salarios y comisiones del personal del departamento 2000, ordenado por comisión
select salEmp, comisionE
from empleado
where codDepto = '2000'
order by comisionE;

-- 13. Listar todas las comisiones
select comisionE
from empleado;

-- 14. Obtener el valor total a pagar que resulta de sumar al personal del departamento 3000 una bonificación de $500.000, en orden alfabético por nombre.
select nomEmp, salEmp+comisionE+500000 as total_a_pagar
from empleado
where codDepto = '3000'
order by nomEmp;

-- 15. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select *
from empleado
where comisionE <= .3*salEmp;

-- 16. Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada persona

-- 17. Hallar el salario y la comisión de aquellas personas cuyo número de documento de identidad es superior al '19.709.802'
select salEmp, comisionE
from empleado
where nDIEmp > '19.709.802';

-- 18. Genere un grupo de personas, incluyendo aquéllas cuyo nombre inicie por la letra J. Emita un listado con nombre y su cargo por orden alfabético.
select nomEmp, cargoE
from empleado
where nomEmp like 'J%'
order by nomEmp;

-- 19. Listar el salario, la  comisión,  el salario total (salario + comisión), documento de identidad  de la persona y nombre, de quienes tienen comisión superior a $1.000.000, ordenar el informe por el número del documento de identidad 
select salEmp, comisionE, salEmp+comisionE as salario_total, nDIEmp, nomEmp
from empleado
where comisionE > 1000000
order by nDIEmp;

-- 20. Hallar el nombre de empleados/as que tienen un salario superior a $1.000.000, y tienen como jefe/a a alguien con documento de identidad '31.840.269'
select nomEmp
from empleado
where salEmp > 1000000 and jefeID = '31.840.269';
 
-- 21. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” ni ‘MANTENIMIENTO’, ordenados por ciudad
select nombreDpto
from departamento
where nombreDpto <> 'ventas' and
nombreDpto <> 'investigación' and
nombreDpto <> 'mantenimiento'
order by ciudad;
