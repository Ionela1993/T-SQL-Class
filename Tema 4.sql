-- 1. GETDATE -  Funcția GETDATE() este folosită pentru a obține data și ora curentă din sistemul de baze de date.

SELECT GETDATE() AS CurrentDateTime;

-- 2. DAY - Funcția DAY este folosită pentru a extrage ziua dintr-o dată dată ca parametru.

SELECT DAY(DueDate) AS DueDay FROM Production.WorkOrder;

--3. MONTH - Funcția MONTH este folosită pentru a extrage luna dintr-o dată dată ca parametru.

SELECT MONTH(OrderDate) AS OrderMonth FROM Sales.SalesOrderHeader;

--4. YEAR - Funcția MONTH este folosită pentru a extrage anul dintr-o dată dată ca parametru.

SELECT YEAR(HireDate) AS HireYear FROM HumanResources.Employee;

--5. UPPER - Funcția UPPER este folosită pentru a converti un șir de caractere în litere mari (majuscule). 

SELECT UPPER(FirstName) AS UppercaseName FROM Person.Person;

--6. LOWER - Funcția LOWER este folosită pentru a converti un șir de caractere în litere mici (minuscule). 

SELECT LOWER(FirstName) AS LowercaseName FROM Person.Person;

--7. LEN - Funcția LEN este folosită pentru a determina lungimea unui șir de caractere dat ca parametru. 

SELECT LEN(FirstName) AS NameLength FROM Person.Person;

--8. RIGHT - Funcția RIGHT este folosită pentru a returna un număr specificat de caractere de la sfârșitul unui șir de caractere dat ca parametru. 

SELECT RIGHT(FirstName, 3) AS Last3Chars FROM Person.Person;

--9. LEFT - Funcția LEFT este folosită pentru a returna un număr specificat de caractere de la începutul unui șir de caractere dat ca parametru. 

SELECT LEFT(FirstName, 3) AS First3Chars FROM Person.Person;

-- 10. DATEDIFF - Funcția DATEDIFF este folosită pentru a calcula diferența dintre două date. 

SELECT DATEDIFF(day, '1994-08-29', GETDATE()) AS DateDiff;

-- 11. CONCAT - Funcția CONCAT este folosită pentru a concatena (a uni) două sau mai multe șiruri de caractere într-un singur șir.

SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Person.Person;

-- 12. ROUND - Funcția ROUND este folosită pentru a rotunji un număr la un număr specific de zecimale. 

SELECT ROUND(ListPrice, 2) AS RoundedPrice FROM Production.Product;

-- 13. SUM - Funcția SUM este folosită pentru a calcula suma valorilor dintr-o coloană a unei tabele.

SELECT SUM(OrderQty) AS TotalQuantity FROM Sales.SalesOrderDetail;

-- 14. MIN - Funcția MIN este folosită pentru a găsi valoarea minimă dintr-o coloană a unei tabele.

SELECT MIN(ListPrice) AS MinimumPrice FROM Production.Product;

-- 15. MAX - Funcția MAX este folosită pentru a găsi valoarea maximă dintr-o coloană a unei tabele. 

SELECT MAX(ListPrice) AS MaximumPrice FROM Production.Product;

-- 16. COUNT - Funcția COUNT este folosită pentru a număra numărul de înregistrări (rânduri) dintr-o tabelă care îndeplinesc anumite condiții.

SELECT COUNT(*) AS TotalProducts FROM Production.Product;

-- 17. AVG - Funcția AVG este folosită pentru a calcula valoarea medie a unei coloane dintr-un tabel.

SELECT AVG(ListPrice) AS AveragePrice FROM Production.Product;

-- 18. DATEADD - Functia DATEADD este utilizata pentru a adauga o anumita valoare (zi, ora, minut, etc.) la o data specifica.

SELECT DATEADD(year, 1, HireDate) AS 'NewHireDate'
FROM HumanResources.Employee
WHERE BusinessEntityID = 2;

-- 19. CAST - Functia CAST este utilizata pentru a converti o valoare de tipul unei anumite date intr-un alt tip de date.

SELECT CAST(OrderDate AS date) as OrderDateOnly
FROM Sales.SalesOrderHeader

-- 20. REPLACE - Functia REPLACE este utilizata pentru a inlocui toate aparitiile unui anumit sir de caractere intr-un alt sir de caractere.

SELECT REPLACE('John Doe', 'Doe', 'Smith') AS 'Nume nou'


