--Drop subcategory table
--DROP TABLE subcategory;

--Create subcategory table

CREATE TABLE subcategory(
	subcategory_id	VARCHAR(15)		NOT NULL,
	subcategory		VARCHAR(30)		NOT NULL,
	PRIMARY KEY(subcategory_id)
); 

--Confirm that category table is correctly created

SELECT * FROM subcategory;

/*
Now import subcategory.csv file
Confirm that subcategory.csv file was correctly imported
*/
SELECT * FROM subcategory;