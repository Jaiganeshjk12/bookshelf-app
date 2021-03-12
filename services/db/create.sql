\c books
CREATE TABLE books(
id INT NOT NULL,
title  VARCHAR    NOT NULL,
author VARCHAR    NOT NULL,
read   BOOL NOT NULL
);

INSERT INTO BOOKS (ID,TITLE,AUTHOR,READ) VALUES (1, 'On the Road', 'Jack Kerouac', true);
INSERT INTO BOOKS (ID,TITLE,AUTHOR,READ) VALUES (2, 'Harry Potter and the Philosophers Stone', 'J. K. Rowling', false);
INSERT INTO BOOKS (ID,TITLE,AUTHOR,READ) VALUES (3, 'Green Eggs and Ham', 'Dr. Suess', true);
