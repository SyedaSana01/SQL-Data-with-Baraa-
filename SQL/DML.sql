--INSERT INTO TABLE 

INSERT INTO customers(id,first_name,country,score)
VALUES 
(7,'Sana','INDIA',1000),
(8,'SAM',NULL,100)

SELECT * FROM customers

CREATE TABLE persons(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id)
)
--INSERT USING SELECT

INSERT INTO persons(id,person_name,birth_date,phone)
SELECT id,first_name,NULL,'Unknown'
FROM customers

SELECT * FROM persons

--UPDATE THE TABLE 

--CHANGE SCORE OF CUTOMER WITH ID 6 TO 0
UPDATE customers
SET score=0
WHERE id=6

-- CHANGE THE CUSTOMER WITH ID 8 TO 0 AND UPDATE COUNTRY TO UK
UPDATE customers
SET id=0,country='UK'
WHERE id=8

--UPDATE ALL CUSTOMERS SCORE FROM NULL TO 0
UPDATE customers
SET score=0
WHERE score is NULL

--DELETE  THE TABLE

--DELETE ROWS WHERE ID>5

DELETE FROM customers
WHERE id>5

SELECT * FROM customers

--DELETE ALL DATA FROM PERSONS
TRUNCATE TABLE persons
TRUNCATE TABLE person