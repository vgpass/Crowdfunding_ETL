DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory; 
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts; 

create table contacts(
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100)
);

create table category(
	category_id VARCHAR(5)PRIMARY KEY NOT NULL,
	category VARCHAR(30)
);

create table subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(30)
);


create table campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(150) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5),
	subcategory_id VARCHAR(10),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY(category_id)  REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id)  REFERENCES subcategory(subcategory_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;