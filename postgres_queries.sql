CREATE TABLE customer (
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
	date_entered TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	id SERIAL PRIMARY KEY 
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
	date_hired TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	id SERIAL PRIMARY KEY 
);

CREATE TABLE product_type(
	product_name VARCHAR(30) NOT NULL,
	id SERIAL PRIMARY KEY
	
);

CREATE TABLE product(
	type_id INTEGER REFERENCES product_type(id),
	name VARCHAR(50) NOT NULL,
	supplier VARCHAR(30) NOT NULL,
	description text NOT NULL,
	id SERIAL PRIMARY KEY
);

CREATE TABLE item( 
	product_id INTEGER REFERENCES product(id),
	size INTEGER NOT NULL,
	color VARCHAR(100) NOT NULL,
	picture VARCHAR(256) NOT NULL,
	price NUMERIC(6,2) NOT NULL,
	id SERIAL PRIMARY KEY
);

CREATE TABLE item( 
	product_id INTEGER REFERENCES product(id),
	size INTEGER NOT NULL,
	color VARCHAR(100) NOT NULL,
	picture VARCHAR(256) NOT NULL,
	price NUMERIC(6,2) NOT NULL,
	id SERIAL PRIMARY KEY
);

CREATE TABLE sales_order( 
	customer_id INTEGER REFERENCES customer(id),
	sales_person_id INTEGER REFERENCES sales_person(id),
	time_order_taken TIMESTAMP NOT NULL,
	purchase_order_number INTEGER NOT NULL,
	credit_card_number VARCHAR(16) NOT NULL,
	credit_card_exper_month SMALLINT NOT NULL,
	credit_card_exper_day SMALLINT NOT NULL,
	credit_card_secret_code SMALLINT NOT NULL,
	name_on_card VARCHAR(100) NOT NULL,
	id SERIAL PRIMARY KEY
);

INSERT INTO customer(
	firstname, lastname, email, company, street, city, postcode, phone, birthdate, sex)
	VALUES (E'Aaliyah', 'Browne', 'AaliyahBrowne@jourrapide.com', 'Steve & Barry''s', 'Tonbridge Rd', 'London', 'BD23 4UH', '07948957011', '1954-04-23', 'F');

CREATE TYPE sex_type AS ENUM ('M','F');
ALTER TABLE customer ALTER COLUMN sex TYPE sex_type USING sex::sex_type;

32:03 mins