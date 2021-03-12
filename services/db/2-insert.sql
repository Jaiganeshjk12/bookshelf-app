\c books
CREATE TABLE books (
id SERIAL PRIMARY KEY,
title  VARCHAR    NOT NULL,
author VARCHAR    NOT NULL,
read   BOOL
);


INSERT INTO books (title,author,read) VALUES ('Harry Potter and the Philosophers Stone', 'J. K. Rowling', false);
INSERT INTO books (title,author,read) VALUES ('On the Road', 'Jack Kerouac', true);
INSERT INTO books (title,author,read) VALUES ('Green Eggs and Ham', 'Dr. Suess', true);