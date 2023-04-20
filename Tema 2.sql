-- Exercise 1
/*You have to create a report based on the tables 
Production.Product and 
Production.ProductCategory. 
The report should contain the product name and the 
category name of each product.*/

Select * from Production.Product
Select * from Production.ProductCategory
Select * from Production.ProductSubcategory

Select p."Name" as ProductName, pcat."Name" as ProductCategoryName
from Production.Product p 
join Production.ProductSubcategory scat
on p.ProductSubcategoryID=scat.ProductSubcategoryID
join Production.ProductCategory pcat 
on pcat.ProductCategoryID=scat.ProductCategoryID

--Exercise 2
/*Write a query that returns all customers who placed at 
least one order, with detailed information about each 
one. The tables are Sales.Customers, 
Sales.SalesOrderHeader and Sales.OrderDetails.*/

Select * from Sales.Customer
Select * from Sales.SalesOrderHeader
Select * from Sales.SalesOrderDetail

Select sc.CustomerID, ssoh.SalesOrderID, 
ssoh.SalesOrderNumber, ssoh.OrderDate, 
ssoh.ShipDate, ssd.OrderQty, ssd.UnitPrice 
from Sales.Customer sc
join Sales.SalesOrderHeader ssoh
on sc.CustomerID=ssoh.CustomerID
join Sales.SalesOrderDetail ssd
on ssd.SalesOrderID=ssoh.SalesOrderID

--Exercise 3
/*You have to create a report based on the tables 
Production.ProductSubcategory and 
Production.ProductCategory. 
The report should return every combination between the 
category name and the subcategory name.*/

Select * from Production.ProductSubcategory
Select * from Production.ProductCategory

Select pps."Name" as CategoryName, ppc."Name" as SubcategoryName
from Production.ProductSubcategory pps
cross join Production.ProductCategory ppc;
 