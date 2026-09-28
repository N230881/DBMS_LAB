USE playstoreDB;


-- level 0
-- 1
UPDATE Apps
SET Rating = 4.5
WHERE AppID = 1002;
COMMIT;
-- 2
SET AUTOCOMMIT = 0;
UPDATE Apps
SET Price = 500
WHERE AppID = 1006;
ROLLBACK;
-- 3
INSERT INTO Apps 
VALUES(1012,'DUOLINGO',109,209,309,4.6,100000000,900);
COMMIT;
-- 4
INSERT INTO Developers
VALUES(107,"New Developer", "INDIA",2026);
ROLLBACK;

-- 5
UPDATE Apps
SET Rating = 4.8
WHERE AppID = 1002;
SAVEPOINT Rating_update;
-- LEVEL 1
-- 1
SET AUTOCOMMIT = 0;
UPDATE Apps
SET Rating = 4.9
WHERE AppID = 1002;

SAVEPOINT rating_update;

UPDATE Apps
SET Rating = 4.6
WHERE AppID = 1003;
 -- 2 
 
 UPDATE Apps
SET Rating = 4.0
WHERE AppID = 1004;

ROLLBACK TO SAVEPOINT rating_update;




-- 3
INSERT INTO Apps 
VALUES(1013,'facebook',106,205,308,4.3,1000000000,800);

SAVEPOINT insert_values;

UPDATE Apps
SET Price = 700
WHERE AppID = 1013;
ROLLBACK TO SAVEPOINT insert_values;

-- 4
GRANT SELECT 
ON playstoreDB.Apps
TO 'root'@'localhost';
 -- 5
GRANT SELECT , INSERT
ON playstoreDB.Apps
TO 'root'@'localhost';

-- 6
REVOKE INSERT 
ON playstoreDB.Apps
FROM 'root'@'localhost';


SHOW GRANTS FOR 'root'@'localhost';

-- level 2

UPDATE Apps
SET Rating = 4.9
WHERE AppID = 1002;

SAVEPOINT sp1;

UPDATE Apps
SET Price = 300
WHERE AppID = 1003;

UPDATE Apps
SET Rating = 4.6
WHERE AppID = 1004;

ROLLBACK TO SAVEPOINT sp1;

-- 2
INSERT INTO Categories
VALUES  (306,'dance',6),
		(307,'swimming',8);
SAVEPOINT insert_val;

ROLLBACK TO insert_val;

-- 3
GRANT SELECT, INSERT, UPDATE
ON playstoreDB.Apps
TO 'root'@'localhost';
-- 4
REVOKE UPDATE
ON playstoreDB.Apps
FROM 'root'@'localhost';
-- 5
GRANT SELECT 
ON playstoreDB.Developers
TO 'root'@'localhost';



REVOKE SELECT
ON playstoreDB.Developers
FROM 'root'@'localhost';

-- 6
UPDATE Apps
SET Price = 500
WHERE AppID = 1003;

UPDATE Apps
SET Rating = 4.9
WHERE AppID = 1004;

COMMIT;

-- 7
SELECT * FROM Apps
WHERE AppID IN(1003,1004);

SELECT * FROM Categories
WHERE CategoryID IN(306,307);



