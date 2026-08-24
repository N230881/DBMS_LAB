use playStoreDB;
-- BASIC

SELECT UPPER(DeveloperName) From Developers;
SELECT LOWER(DeveloperName) From Developers;
SELECT LENGTH(DeveloperName) From Developers;
SELECT CategoryName , LENGTH(CategoryName) From Categories;
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT ROUND(Rating,0) FROM Apps;
-- Intermediate
SELECT SUBSTRING(AppName,1,5) From Apps;
SELECT CONCAT(DeveloperName, ' ' , country) From Developers;
SELECT ROUND(Rating) FROM Apps;
SELECT CEIL(Price) FROM APPS;
SELECT FoundedYear From Developers;
SELECT CONVERT(Downloads, CHAR) FROM Apps;

-- practise
SELECT UPPER(AppName) , Rating From Apps;
SELECT SUBSTRING(CategoryName, 1,3) From Categories;
SELECT ABS(price - 200) FROM Apps;
SELECT DeveloperName , LENGTH(DeveloperName) FROM Developers;
SELECT CURRENT_DATE();
SELECT CURRENT_TIMESTAMP();
SELECT CAST(PublisherID  AS CHAR) FROM Publishers
