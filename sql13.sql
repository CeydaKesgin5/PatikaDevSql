select * into sales.storeinfo
from [AdventureWorks2017].[Sales].vStoreWithDemographics

select * from sales.storeinfo
where name like '%b'

SELECT DISTINCT BankName,Specialty from SALES.STOREINFO

SELECT * FROM SALES.STOREINFO 
WHERE Specialty='Mountain' AND NumberEmployees BETWEEN 20 AND 50
ORDER BY YearOpened DESC,NAME ASC

SELECT COUNT(*)as number, 
MIN(NumberEmployees) as min ,
MAX(NumberEmployees) as max ,
AVG(NumberEmployees) as avg 
FROM SALES.STOREINFO 
WHERE Specialty='Mountain'

SELECT COUNT(*) as number, Specialty,
MIN(NumberEmployees) as min ,
MAX(NumberEmployees) as max ,
AVG(NumberEmployees) as avg 
FROM SALES.STOREINFO 
GROUP BY Specialty

SELECT COUNT(*) as number,name, Specialty,
MIN(NumberEmployees) as min ,
MAX(NumberEmployees) as max ,
AVG(NumberEmployees) as avg 
FROM SALES.STOREINFO 
GROUP BY name, Specialty
HAVING min(NumberEmployees)>20
ORDER BY Name

SELECT BankName, SUM(ANNUALSALES) AS ANNUALSALES,
COUNT(NAME) STORECOUNT
FROM SALES.STOREINFO
GROUP BY BankName
ORDER BY COUNT(Name) DESC

--ÝÞ TÜRLERÝ DAÐILIMI
SELECT BusinessType,SUM(AnnualSales) AS ANNUALSALES,
COUNT(NAME) STORECOUNT
FROM SALES.STOREINFO
GROUP BY BusinessType
ORDER BY COUNT(NAME) DESC

--ÝÞ TÜRLERÝNÝN BANKALARA GÖRE DAÐILIMI
SELECT BusinessType,BankName, SUM(AnnualSales) AS ANNUALSALES,
COUNT(NAME) STORECOUNT
FROM SALES.STOREINFO
GROUP BY BusinessType,BankName
ORDER BY BusinessType

--ÝLGÝ ALANINA GÖRE MARKA SAYISI DAÐILIMI
SELECT Brands,Specialty, SUM(ANNUALSALES) AS ANNUALSALES,
COUNT(NAME) STORECOUNT
FROM SALES.STOREINFO
GROUP BY Specialty,Brands
ORDER BY Brands,COUNT(NAME) DESC