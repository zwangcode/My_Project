SELECT  p.BusinessEntityID,
        year( oh.orderdate)*100+month(oh.orderdate) as orderYrMo
		,count(*) as orderCnt
		,sum(oh.SubTotal) as orderTotal
		,avg(oh.subTotal) as avgOrderSize
FROM
        SALES.SalesOrderHeader OH
        INNER JOIN
        SALES.Customer C
        ON
        OH.CustomerID = C.CustomerID
        INNER JOIN
        Person.Person P
        ON
        C.PersonID = P.BusinessEntityID
        INNER JOIN
        Person.BusinessEntity BE
        ON
        P.BusinessEntityID = BE.BusinessEntityID
        INNER JOIN
        Person.BusinessEntityAddress BEA
        ON
        BE.BusinessEntityID = BEA.BusinessEntityID
        INNER JOIN
        Person.Address ADDR
        ON
        BEA.AddressID = ADDR.AddressID
        INNER JOIN
        Person.AddressType ADDRT
        ON
        BEA.AddressTypeID = ADDRT.AddressTypeID
        INNER JOIN
        Person.StateProvince sp
        ON
        ADDR.StateProvinceID = sp.StateProvinceID
        INNER JOIN
        Person.CountryRegion cr
        ON
        sp.CountryRegionCode = cr.CountryRegionCode

where   cr.Name = 'United States' and
        sp.StateProvinceCode='WA' and
        addr.City= 'Redmond' and
        ADDRT.Name = 'Home'

group by p.BusinessEntityID,year( oh.orderdate)*100+month(oh.orderdate)
having sum(oh.SubTotal) > 1000;

---- previouse example is really difficult to understand.
---- as a better practice, we should enclose the business logic
---- in subqueries to better represent the requriement

select  qc.PersonID,qc.FirstName,qc.LastName,
        year( oh.orderdate)*100+month(oh.orderdate) as orderYrMo,
        count(*) as orderCnt,
        sum(oh.SubTotal) as orderTotal,
        avg(oh.subTotal) as avgOrderSize
from

(
--- subquery to find the distinct customer who lives in
--- redmond WA
SELECT  distinct c.CustomerID, c.PersonID, p.FirstName,p.LastName
FROM    SALES.Customer c
        INNER JOIN
        Person.Person p
        on
        c.PersonID = p.BusinessEntityID
        INNER JOIN
        (
        --- only get the home address
        SELECT  BEA.BusinessEntityID,
                BEA.AddressID
        FROM    Person.BusinessEntityAddress BEA
                INNER JOIN
                Person.AddressType ADDRT
                ON
                BEA.AddressTypeID = ADDRT.AddressTypeID
        WHERE   ADDRT.NAME='Home'
        ) HOME_ADDR
        ON
        p.BusinessEntityID = HOME_ADDR.BusinessEntityID
        INNER JOIN
        (
        --- Let's put the fragmented state/country together
        SELECT  addr.AddressID
        FROM    Person.Address addr
                INNER JOIN
                Person.StateProvince sp
                ON
                addr.StateProvinceID = sp.StateProvinceID
                INNER JOIN
                Person.CountryRegion cr
                ON
                sp.CountryRegionCode = cr.CountryRegionCode
        WHERE   cr.Name='United States' and
                sp.StateProvinceCode='WA' and
                addr.City='Redmond'
        ) addr
        ON
        HOME_ADDR.AddressID = addr.AddressID
) qc
INNER JOIN
SALES.SalesOrderHeader OH
ON
qc.CustomerID = OH.CustomerID

group by qc.PersonID,qc.FirstName,qc.LastName,
year( oh.orderdate)*100+month(oh.orderdate)
--having sum(oh.SubTotal) > 1000
order by PersonID

