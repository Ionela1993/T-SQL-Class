-- Homework:
-- Problem 1: List all products and their suppliers.

select * from Purchasing.ProductVendor
select * from Production.Product
select * from Purchasing.Vendor

select pp.ProductID, pp."Name" as ProductName, pv."Name" as SupplierName
from Production.Product pp
join Purchasing.ProductVendor ppv
on pp.ProductID=ppv.ProductID
join Purchasing.Vendor pv
on pv.BusinessEntityID=ppv.BusinessEntityID;

-- Problem 2: List all orders placed by a specific customer (e.g., CustomerID = 29825) along with the order details.


select * from Sales.SalesOrderDetail
select * from Sales.SalesOrderHeader
select * from Production.Product


select ssd.SalesOrderID, ssh.OrderDate, ssd.ProductID, pp."Name" as ProductName, ssd.OrderQty, ssd.UnitPrice, ssd.LineTotal
from Sales.SalesOrderDetail ssd
join Sales.SalesOrderHeader ssh
on ssd.SalesOrderID=ssh.SalesOrderID
join Production.Product pp
on pp.ProductID=ssd.ProductID
where CustomerID=29825;

--Problem 3: List all customers and their respective sales territories.

select * from Sales.SalesTerritory
select * from Sales.Customer
select * from Person.Person

select sc.CustomerID, pp.FirstName, pp.LastName, sst."Name" as TerritoryName
from Sales.Customer sc
join Sales.SalesTerritory sst
on sc.TerritoryID=sst.TerritoryID
join Person.Person pp
on pp.BusinessEntityID=sc.PersonID

--List all products with their subcategories and categories.

select * from Production.Product
select * from Production.ProductSubcategory
select * from Production.ProductCategory

select pp.ProductID, pp."Name" as ProductName, pps."Name" as SubcategoryName, ppc."Name" as CategoryName
from Production.Product pp
join Production.ProductSubcategory pps
on pp.ProductSubcategoryID=pps.ProductSubcategoryID
join Production.ProductCategory ppc
on pps.ProductCategoryID=ppc.ProductCategoryID

--Problem 5: List all vendors and their respective purchase order approvers.

Select * from Purchasing.Vendor
select * from Purchasing.PurchaseOrderHeader
select * from Sales.Customer
select * from Person.Person 
select * from Person.EmailAddress
select * from Person.BusinessEntity
select * from Purchasing.ProductVendor

select pp.BusinessEntityID, pv."Name" as VendorName,  pp.FirstName, pp.LastName, pea.EmailAddress
from Purchasing.Vendor pv
join Purchasing.PurchaseOrderHeader ppoh
on pv.BusinessEntityID=ppoh.VendorID
