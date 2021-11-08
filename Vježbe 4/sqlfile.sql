CREATE SCHEMA `shoppingListVjezbe4`;

USE `shoppingListVjezbe4`;

CREATE TABLE Item (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name NVARCHAR(50) NOT NULL
);

SELECT * FROM Item;

INSERT INTO Item (name) VALUES ('test unos iz workbencha');