-- creates table users, if it exists it will not fail
-- has attributes id, email, name
-- id is integer, never null, out-increases and a primary key
-- email is a string with 255 characters, never null and unique
-- name is a string with 255 characters
-- country is enum of countries: US, CO, TIN (default=US) 

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM ('US', 'CO', 'TN') NOT NULL
);
