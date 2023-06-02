-- 1. Customers who have not placed any orderd

Select CustomerID 
from Sales.Customer 
where CustomerID  not in
(select CustomerID from Sales.SalesOrderHeader);

--2. Product with the maximum number of colors available

select * from production.ProductModel where ProductModelID in 
(select ProductModelID from
(select Top 1 ProductModelID, count(*) nr_colors from [Production].[Product] 
where ProductModelId is not null
group by ProductModelID order by nr_colors desc) alias_obligatoriu)

-- or 

Select *
From Production.ProductModel pm
Where pm.ProductModelID IN (
Select top 1  p.ProductModelID
From Production.Product p
Where p.ProductModelID IS NOT NULL
Group by p.ProductModelID
Order by COUNT(*) DESC
)

-- 3. Sales person who made the highest number of sales

Select * from Sales.SalesPerson where BusinessEntityID in ( 
select Top 1 SalesPersonID 
from Sales.SalesOrderHeader
group by SalesPersonID
order by count(*))

-- 4. Products that are more expensive than the cheapest product in the 'Bikes' category

Select * from Production.Product where ListPrice > (
(Select TOP 1 ListPrice from Production.Product where ProductSubcategoryID IN
(select ProductSubcategoryID from Production.ProductSubcategory where ProductCategoryID in 
(select ProductCategoryID from Production.ProductCategory where name = 'Bikes'))
order by ListPrice ASC))
