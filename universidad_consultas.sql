select *
from asignatura
where tipo like 'optativa'

select nombre
from departamento

select upper(apellido1) apellido1, upper(apellido2) apellido2, upper(nombre) nombre
from persona

select apellido1, apellido2, nombre
from persona
where tipo like 'profesor' and fecha_nacimiento < '17/01/1981'