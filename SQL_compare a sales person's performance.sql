/***************************************************************
generate a report to compare a sales person's performance month by
month for two years
****************************************************************/
-- step 1

SELECT sp.BusinessEntityID as sales_person_id,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) as yr,
datepart(month,oh.orderdate) as mo,
sum(oh.SubTotal) as sales_amt
FROM SALES.SalesOrderHeader oh
inner join
Sales.SalesPerson sp
on
oh.SalesPersonID = sp.BusinessEntityID
inner join
person.Person p
on
sp.BusinessEntityID = p.BusinessEntityID
group by sp.BusinessEntityID ,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) ,
datepart(month,oh.orderdate)
order by sales_person_id,yr,mo

;

--- step 2
--- this query did not answer the business question, by each month, how much increase/decrese
--- of sales per sales person by comparing to the same month last year
--- one attemp would do following
select coalesce(a.sales_person_id,b.sales_person_id) as sales_person_id,
coalesce(a.FirstName,b.FirstName) as FirstName,
coalesce(a.LastName,b.LastName) as LastName,
coalesce(a.yr,b.yr+1) as yr,
coalesce(b.yr,a.yr -1) as prev_yr,
coalesce(a.mo,b.mo) as mo,
coalesce(a.sales_amt ,0) as sales_amt,
coalesce(b.sales_amt,0) as prev_sales
from
(
SELECT sp.BusinessEntityID as sales_person_id,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) as yr,
datepart(month,oh.orderdate) as mo,
sum(oh.SubTotal) as sales_amt
FROM SALES.SalesOrderHeader oh
inner join
Sales.SalesPerson sp
on
oh.SalesPersonID = sp.BusinessEntityID
inner join
person.Person p
on
sp.BusinessEntityID = p.BusinessEntityID
group by sp.BusinessEntityID ,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) ,
datepart(month,oh.orderdate)

) a
 full outer join
(
SELECT sp.BusinessEntityID as sales_person_id,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) as yr,
datepart(month,oh.orderdate) as mo,
sum(oh.SubTotal) as sales_amt
FROM SALES.SalesOrderHeader oh
inner join
Sales.SalesPerson sp
on
oh.SalesPersonID = sp.BusinessEntityID
inner join
person.Person p
on
sp.BusinessEntityID = p.BusinessEntityID
group by sp.BusinessEntityID ,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) ,
datepart(month,oh.orderdate)

) b
on
a.sales_person_id = b.sales_person_id and
a.mo = b.mo and
a.yr = b.yr +1
order by sales_person_id,yr,mo
;

---- step 3, using WITH clause, we can simplify the query by

WITH SALES AS (
SELECT sp.BusinessEntityID as sales_person_id,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) as yr,
datepart(month,oh.orderdate) as mo,
sum(oh.SubTotal) as sales_amt
FROM SALES.SalesOrderHeader oh
inner join
Sales.SalesPerson sp
ON
oh.SalesPersonID = sp.BusinessEntityID
inner join
person.Person p
ON
sp.BusinessEntityID = p.BusinessEntityID
GROUP BY Sp.BusinessEntityID ,
p.FirstName,
p.LastName,
datepart(year,oh.OrderDate) ,
datepart(month,oh.orderdate)
)
SELECT
coalesce(a.sales_person_id,b.sales_person_id) as sales_person_id,
coalesce(a.FirstName,b.FirstName) as FirstName,
coalesce(a.LastName,b.LastName) as LastName,
coalesce(a.yr,b.yr+1) as yr,
coalesce(b.yr,a.yr -1) as prev_yr,
coalesce(a.mo,b.mo) as mo,
coalesce(a.sales_amt ,0) as sales_amt,
coalesce(b.sales_amt,0) as prev_sales
FROM sales a
FULL OUTER JOIN
sales b
ON
a.sales_person_id = b.sales_person_id and
a.mo = b.mo and
a.yr = b.yr +1
ORDER BY  sales_person_id,yr,mo;