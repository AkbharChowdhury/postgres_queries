CREATE TABLE customer (
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	company VARCHAR(100) NOT NULL,
	street VARCHAR(100) NOT NULL,
	city VARCHAR(40) NOT NULL,
	country_state CHAR(2) NOT NULL,
	zip SMALLINT NOT NULL,
	phone VARCHAR(20) NOT NULL,
	birthdate DATE NULL,
	sex CHAR(1) NOT NULL,
	date_entered TIMESTAMP NOT NULL DEFAULT current_timestamp,
	customer_id SERIAL PRIMARY KEY 
);

INSERT INTO public.customer(
	firstname, lastname, email, company, street, city, postcode, phone, birthdate, sex)
	VALUES (E'Aaliyah', 'Browne', 'AaliyahBrowne@jourrapide.com', 'Steve & Barry''s', 'Tonbridge Rd', 'London', 'BD23 4UH', '07948957011', '1954-04-23', 'F');

CREATE TYPE sex_type AS ENUM ('M','F');


	18:03