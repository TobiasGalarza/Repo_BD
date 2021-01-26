select firstname nombresEmpleados, lastname apellidos
from employees as empleados

select distinct city
from Employees

select productname, unitprice
from products

select *
from Employees
where country like 'usa'

select *
from orders
where freight > 50 order by Freight

select companyname 
from customers
where ContactTitle like 'owner'

select *
from customers 
where contactname like 'a%'

select contactname nombresClientes
from customers 
where region is not null

select *
from Products
order by UnitPrice

select *
from Products
order by UnitPrice desc

select count(*) TotalEmpleados
from Employees

select avg(freight) gastoEnvioPromedio, max(freight) gastoEnvioMaximo
from orders