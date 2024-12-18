CREATE TABLE sales_person (
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	company VARCHAR(100) NOT NULL,
	street VARCHAR(100) NOT NULL,
	city VARCHAR(40) NOT NULL,
	postcode VARCHAR(12) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	birthdate DATE NULL,
	sex sex_type NOT NULL,
	date_entered TIMESTAMP NOT NULL DEFAULT current_timestamp,
	sales_person_id SERIAL PRIMARY KEY 
);


CREATE TABLE sales_person (
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	company VARCHAR(100) NOT NULL,
	street VARCHAR(100) NOT NULL,
	city VARCHAR(40) NOT NULL,
	postcode VARCHAR(12) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	birthdate DATE NULL,
	sex sex_type NOT NULL,
	date_hired TIMESTAMP NOT NULL DEFAULT current_timestamp,
	sales_person_id SERIAL PRIMARY KEY 
);

INSERT INTO customer(
	firstname, lastname, email, company, street, city, postcode, phone, birthdate, sex)
	VALUES (E'Aaliyah', 'Browne', 'AaliyahBrowne@jourrapide.com', 'Steve & Barry''s', 'Tonbridge Rd', 'London', 'BD23 4UH', '07948957011', '1954-04-23', 'F');

CREATE TYPE sex_type AS ENUM ('M','F');
ALTER TABLE customer ALTER COLUMN sex TYPE sex_type USING sex::sex_type;

	18:03