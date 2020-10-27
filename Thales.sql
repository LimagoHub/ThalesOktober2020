use Northwind;

select * from [dbo].[Customers];

select * from [dbo].[Suppliers];

SELECT CompanyName as Firma, City as Ort, Phone as Telefon From Customers;

SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Country
From Customers c
Where Country = 'USA'
Order by c.CustomerID desc;

SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Country
From Customers c
Where City = 'London'
Order by c.CustomerID desc;


SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Country
From Customers c
Where City like 'L%'
Order by c.CustomerID desc;


SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Country
From Customers c
Where City like '%burg'
Order by c.CustomerID desc;


SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Region
From Customers c
where Region is not null

select 
	Productname, 
	Unitprice 
from Products
where UnitPrice between 20 and 50;

SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Region
From Customers c
where City between 'London' and 'Paris';

SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Region
From Customers c
where City in ('London','Paris','Berlin')
order by City desc , CompanyName asc

SELECT 
	c.CompanyName, -- Hallo
	c.City, 
	c.Phone ,
	c.Region
From Customers c
where Country = 'USA' or City like 'W%'

SELECT top 1 * from Products
order by unitprice asc

select count(*) from orders

select customerID from Orders
group by customerID;


Select customerID , count(*) as Anzahl from Orders
group by customerID
order by Anzahl desc;




select avg(unitPrice) from Products
select max(unitPrice) from Products
select min(unitPrice) from Products
select sum(unitPrice) from Products
select count(unitPrice) from Products


select count(region) from Customers;


select EmployeeId , count(*) as Anzahl from Orders
group by EmployeeID
order by Anzahl desc;

select Country, count(*) as anzahl from  [dbo].[Customers]
Group by Country
order by Anzahl desc;

select City, count(*) as anzahl from  [dbo].[Customers]
Group by City
order by Anzahl desc;


select o.EmployeeID, o.CustomerID, count(o.OrderID) from orders o
group by  o.EmployeeID, o.CustomerID


select *, UnitPrice * Quantity as Total from [dbo].[Order Details]

select sum(UnitPrice * Quantity) as Gesamt from [Order Details]

select * from Customers c, Orders o
where c.CustomerID = o.CustomerID;

select c.CompanyName, o.OrderID from Customers c inner join Orders o on c.CustomerID = o.CustomerID;

select e.LastName, o.OrderId from [dbo].[Employees] e inner join Orders o on e.EmployeeID = o.EmployeeID;

select Employees.LastName, o.OrderId from [dbo].[Employees] inner join Orders o on Employees.EmployeeID = o.EmployeeID;

SELECT c.CategoryName, p.ProductName from Categories c inner join Products p  on c.CategoryID = p.CategoryID;

SELECT c.country, count(o.OrderId) as Anzahl from Customers c inner join Orders o on c.CustomerID = o.CustomerID
group by c.Country
order by Anzahl desc
;


Select c.country, count(*) as Anzahl
from Customers c inner join Orders o on c.CustomerID = o.CustomerID
group by c.Country
order by 2 desc;
;

Select sum(od.Quantity) as Summe, p.ProductName
from Products p inner join [Order Details] od on p.ProductID = od.ProductID
group by p.ProductName
order by Summe desc;



