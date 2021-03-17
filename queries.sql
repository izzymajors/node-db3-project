-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.productname, p.categoryid
FROM product p

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select
o.id,orderdate,s.companyname
from [order] o
join shipper s
where orderdate <= '2012/08/09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.select
p.productname, p.quantityperunit, o.id=10251
from  product p
join [order] o


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
o.id, c.companyname, e.lastname
from [order] o
join customer c
join employee e
