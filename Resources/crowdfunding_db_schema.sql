/*
PROJECT 2 GROUP: ZIYE JIN, MICHAEL ROBERTS, CHELSEA SUMBA

DATABASE SCHEMA FOR CREATING CROWDFUNDING_DB DATABASE IN POSTGRESQL

1	The following four tables were created in this order: 
	category, subcategory,contacts, campaign
2	The following CSV files: category.csv, subcategory.csv, contacts.csv and campaign.csv were imported in their
	respective tables
*/

=============================
--1. CODE TO CREATE CATEGORY TABLE

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

=================================
--2. CODE TO CREATE SUBCATEGORY TABLE

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

===================================

--3. CODE TO CREATE CONTACTS TABLE

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

====================================

--4. CODE TO CREATE CAMPAIGN TABLE

--Drop campaign table
--DROP TABLE campaign;

--Create campaign table

CREATE TABLE campaign(
	cf_id			INT				NOT NULL,
	contact_id		INT				NOT NULL,
	company_name	VARCHAR(50)		NOT NULL,
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
	
	PRIMARY KEY(cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
); 
--Confirm that campaign table is correctly created

SELECT * FROM campaign;

/*
Now import campaign.csv file
Confirm that campaign.csv file was correctly imported
*/

SELECT * FROM campaign;

==================================
--END OF FILE

