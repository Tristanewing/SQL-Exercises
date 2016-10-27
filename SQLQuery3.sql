/*Return all category names with their descriptions from the Categories table.*/
SELECT CategoryName, Description FROM dbo.Categories
/*Return the contact name, customer id, and company name of all Customers in London*/
SELECT ContactName, CustomerID, CompanyName FROM Customers WHERE City = 'London'
/*Return all available columns in the Suppliers tables for the marketing managers and sales representatives that have a FAX number*/
SELECT ContactName, ContactTitle FROM dbo.Suppliers WHERE fax is not null 
/*Return a list of customer id's from the Orders table with required dates between Jan 1, 1997 and Jan 1, 1998 and with freight under 100 units.*/
SELECT CustomerID FROM dbo.Orders WHERE RequiredDate Between '1997-1-1' and '1998-1-1' and Freight < 100
/*Return a list of company names and contact names of all the Owners from the Customer table from Mexico, Sweden and Germany.*/
SELECT CompanyName, ContactName FROM dbo.Customers Where Country= 'Mexico' or Country= 'Sweden' or Country= 'Germany' 
/*Return a count of the number of discontinued products in the Products table.*/
SELECT Discontinued FROM dbo.Products
/*Return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table.*/
SELECT CategoryName, [Description] FROM dbo.Categories WHERE CategoryName  LIKE 'Co%'
/*Return all the company names, city, country and postal code from the Suppliers table with the word 'rue' in their address. The list should ordered alphabetically by company name.*/
SELECT CompanyName, City, Country, PostalCode FROM dbo.Suppliers Where Address Like 'rue%' Order By 
CompanyName
/*Return the product id and the total quantities ordered for each product id in the Order Details table.*/
SELECT ProductID, Quantity From dbo.[Order Details] 
/*Return the customer name and customer address of all customers with orders that shipped using Speedy Express.*/
/*SELECT* FROM dbo.Orders*/
SELECT ShipName, ShipAddress,ShipVia FROM dbo.Orders WHERE ShipVia = '1'
/*Return a list of Suppliers containing company name, contact name, contact title and region description.*/
SELECT CompanyName, ContactName, ContactTitle, Region From dbo.Suppliers 
/*Return all product names from the Products table that are condiments.*/
SELECT ProductName FROM dbo.Products WHERE CategoryID = 2
/*Return a list of customer names who have no orders in the Orders table.*/
 SELECT ContactName FROM dbo.Customers FULL JOIN dbo.Orders ON Customers.CustomerID= Orders.CustomerID WHERE OrderDate is null 
/*Add a shipper named 'Amazon' to the Shippers table using SQL.*/ 
INSERT INTO dbo.Shippers( CompanyName) VALUES ('Amazon')
/*Change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL.*/
UPDATE dbo.Shippers
SET CompanyName='Amazon Prime'
WHERE CompanyName='Amazon'
/*Return a complete list of company names from the Shippers table. Include freight totals rounded to the nearest whole number for each shipper from the Orders table for those shippers with orders.*/
SELECT CompanyName FROM dbo.Shippers
/*Return all employee first and last names from the Employees table by combining the 2 columns aliased as 'DisplayName'. The combined format should be 'LastName, FirstName'.*/
/*Add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'.*/
INSERT INTO dbo.Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES ('Tris','Tristans Code', 'Tristan Ewing', 'Owner','45-342 Via Tree', 'San Diego','NULL','NULL', 'United States','760-625-6128','Null')
UPDATE dbo.Customers
SET CustomerID= 'TRIS'
WHERE CustomerID='Tris'

/*INSERT INTO dbo.Orders(6)*/ /*SELECT * FROM dbo.Customers*/

/*Remove yourself and your order from the database.*/
DELETE dbo.Customers WHERE CustomerID='TRIS'
SELECT* FROM dbo.Customers
/*Return a list of products from the Products table along with the total units in stock for each product. Include only products with TotalUnits greater than 100.*/
SELECT ProductName, UnitsInStock FROM dbo.Products Where UnitsInStock >100
 