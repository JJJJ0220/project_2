--Drop campaign table
DROP TABLE campaign;

--Create campaign table

CREATE TABLE campaign(
	cf_id			INT				NOT NULL,
	contact_id		INT				NOT NULL,
	company_name	VARCHAR(100)	NOT NULL,
	description		TEXT			NOT NULL,
	goal			NUMERIC(7,1)	NOT NULL,
	pledged			NUMERIC(7,1)	NOT NULL,
	outcome			VARCHAR(20)		NOT NULL,
	backers_count	INT				NOT NULL,
	country			VARCHAR(5)		NOT NULL,
	currency		VARCHAR(5)		NOT NULL,
	launched_date	DATE			NOT NULL,
	end_date		DATE			NOT NULL,
	category_id		VARCHAR(15)		NOT NULL,
	subcategory_id	VARCHAR(15)		NOT NULL,
	
	PRIMARY KEY(cf_id)
/*	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
*/
); 
--Confirm that campaign table is correctly created

SELECT * FROM campaign;

/*
Now import campaign.csv file
Confirm that campaign.csv file was correctly imported
*/

SELECT * FROM campaign;
