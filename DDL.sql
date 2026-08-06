
-- Create a table
CREATE Table people(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_people PRIMARY KEY (id)
)

--Add a new column called email to the persons table
ALTER TABLE people
ADD email VARCHAR(50) NOT NULL

SELECT * from people
--DELETE A COLUMN
ALTER TABLE people
DROP COLUMN phone

SELECT * FROM people



SELECT * FROM persons


