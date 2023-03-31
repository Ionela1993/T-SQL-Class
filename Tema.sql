-- 1. Retrieve the top 10 most expensive products in the 'Product' table.

Select top 10
ProductID, "Name", MAX(ListPrice) As Mostexpensive
From Production.Product
Group by ProductID, "Name"
Order by Mostexpensive DESC


-- 2. Find the total number of products for each product subcategory.

Select count(ProductID) As ProdusID, ProductSubcategoryID
FROM Production.Product
Group by ProductSubcategoryID

-- 3. List all products that have a standard cost between $100 and $500. 

	Select ProductID, "Name", ListPrice
	From Production.Product
	Where ListPrice between 100 and 500;

-- 4. Retrieve the top 5 product subcategories with the highest average list price.

	Select "Name", ProductSubcategoryID, AVG(ListPrice) As Pret
	From Production.Product
	Group By "Name", ProductSubcategoryID
	Order by Pret DESC

-- 5. Find the total number of discontinued products.

    Select ProductID, DiscontinuedDate, Count(*) As Totalprodusediscontinue
	From Production.Product
	WHERE DiscontinuedDate is not null
	Group by ProductID, DiscontinuedDate

-- or 
	
	Select count(ProductId) as NumberOfDiscontinuedProducts
	from Production.Product
	where SellEndDate is not null