--Drop category table
--DROP TABLE category;

--Create category table

CREATE TABLE category(
	category_id		VARCHAR(15)		NOT NULL,
	category		VARCHAR(30)		NOT NULL,
	PRIMARY KEY(category_id)
); 

--Confirm that category table is correctly created

SELECT * FROM category;

/*
Now import category.csv file
Confirm that category.csv file was correctly imported
*/
SELECT * FROM category;
