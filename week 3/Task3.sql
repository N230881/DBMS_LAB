USE PlayStoreDB;
-- basic
INSERT INTO Developers
(DeveloperID, DeveloperName, Country, FoundedYear)
VALUES
(105, 'BYJU''S', 'India', 2011);

-- 1
ALTER TABLE Apps
ADD CONSTRAINT fk_developer
FOREIGN KEY (DeveloperID)
REFERENCES Developers(DeveloperID);
-- 2
ALTER TABLE Apps
ADD CONSTRAINT fk_publisher
FOREIGN KEY(PublisherID)
REFERENCES Publishers(PublisherID);


INSERT INTO Categories
(CategoryID, CategoryName, MinimumAge)
VALUES

(303, 'Music', 12);
-- 3
ALTER TABLE Apps
ADD CONSTRAINT fk_category
FOREIGN KEY(categoryID)
REFERENCES categories(categoryID);
-- 4
SELECT *
FROM Apps
WHERE rating > 4.5;
-- 5
SELECT *
FROM Apps
WHERE price = 0;
-- 6
SELECT *
FROM Categories
WHERE CategoryID = 305; 

-- level 1
-- 1
SELECT *
FROM Apps
WHERE Downloads > 500000000;
-- 2
SELECT *
FROM Apps
WHERE Rating BETWEEN 4.3 AND 4.7;
-- 3
SELECT *
FROM Apps
WHERE Price IN(0,200);
-- 4
SELECT *
FROM Apps
WHERE AppName LIKE 'G%';
-- 5
SELECT *
FROM Apps
WHERE AppName LIKE '%Google%';
--6
SELECT *
FROM Apps
WHERE Rating > 4.0 AND Downloads > 500000000;
-- 7
SELECT *
FROM Apps
WHERE CategoryID = 301 OR CategoryID = 305;

-- Level2
-- 1
SELECT *
FROM Apps
WHERE AppName NOT LIKE 'G%';

-- 2 
SELECT *
FROM Apps
WHERE Rating < 4.5 OR DOWNLOADS > 1000000000;
-- 3
SELECT *
FROM Developers
WHERE  DeveloperName LIKE '%a%';
-- 4
SELECT *
FROM Apps
WHERE Price  BETWEEN 0 AND 300;
-- 5
SELECT *
FROM Apps
WHERE PublisherID = 201 OR 204;
-- 6
INSERT INTO Apps
(AppID, AppName, DeveloperID, PublisherID, CategoryID,Rating,Downloads,Price) 
VALUES
(1012,'TEST',108,207,310,5,1000000000,0);
-- 7
SELECT *
FROM Apps
WHERE CategoryId <> 305;



