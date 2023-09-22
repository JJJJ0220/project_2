--Drop contacts table
--DROP TABLE contacts;

--Create contacts table

CREATE TABLE contacts(
	contact_id		INT				NOT NULL,
	first_name		VARCHAR(30)		NOT NULL,
	last_name		VARCHAR(30)		NOT NULL,
	email			VARCHAR(60)		NOT NULL,
	PRIMARY KEY(contact_id)
); 

--Confirm that contacts table is correctly created

SELECT * FROM contacts;

/*
Now import contacts.csv file
Confirm that contacts.csv file was correctly imported
*/
SELECT * FROM contacts;
