USE PlayStoreDB;
-- Basic
SELECT COUNT(*) AS TotalApplications FROM Apps;

SELECT AVG(Rating) AS AvgRating
FROM Apps;

SELECT MAX(Rating)  AS HighestRating FROM Apps;

SELECT MIN(Rating) AS LowestRating FROM Apps;

SELECT SUM(Downloads) FROM Apps;

SELECT AppID , Rating 
FROM Apps
ORDER BY Rating DESC;

-- LEVEL 1
SELECT CategoryID, COUNT(*) AS NumberOfApplications
FROM Apps
GROUP BY CategoryID;

SELECT CategoryID , AVG(Rating) AS AvgRating
FROM Apps
GROUP BY (CategoryID);

SELECT MAX(Price) AS MaximumPrice,
       MIN(Price) AS MininumPrice
FROM Apps;

SELECT *
FROM Apps
ORDER BY (Downloads) DESC;

SELECT DeveloperID , COUNT(*)
FROM Apps
GROUP BY DeveloperID;

SELECT CategoryID , count(*)
FROM Apps
GROUP BY CategoryID
HAVING COUNT(*) > 1;

-- LEVEL 2
SELECT DeveloperID, SUM(Downloads)
FROM Apps
GROUP BY  DeveloperID;

SELECT PublisherID, AVG(rating)
FROM Apps
GROUP BY  PublisherID;

SELECT DeveloperID,  COUNT(*)
FROM Apps
GROUP BY DeveloperID
HAVING COUNT(*) >1;

SELECT CategoryID , AVG(Rating) 
FROM Apps
GROUP BY (CategoryID)
HAVING AVG(Rating) > 4.3;

SELECT CategoryID , COUNT(*) AS  NumberOfApplications
FROM Apps
GROUP BY CategoryID
ORDER BY  NumberOfApplications  DESC;

SELECT AppName , Rating
FROM Apps
WHERE Rating = (SELECT MAX(Rating) FROM Apps);

SELECT DeveloperID , SUM(Price)
FROM Apps
Group by DeveloperID;
