\c books
CREATE TABLE books (
ID INT,
TITLE  VARCHAR    NOT NULL,
AUTHOR VARCHAR    NOT NULL,
READ   BOOL NOT NULL
);


INSERT INTO books (TITLE,AUTHOR,READ) VALUES ('Harry Potter and the Philosophers Stone', 'J. K. Rowling', false);
INSERT INTO books (TITLE,AUTHOR,READ) VALUES ('On the Road', 'Jack Kerouac', true);
INSERT INTO books (TITLE,AUTHOR,READ) VALUES ('Green Eggs and Ham', 'Dr. Suess', true);