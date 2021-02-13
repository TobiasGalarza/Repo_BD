select *
from empleado
where sueldo > 10000

select count(*) mayor15mil
from empleado
where (1.05*sueldo) > 15000

select nombre
from departamento

select empleado.*
from empleado, cargo
where empleado.idcargo in (select cargo.idcargo where cargo.nombre like 'programador') and 
empleado.sueldo > (select cargo.sueldo_min where cargo.nombre like 'programador')