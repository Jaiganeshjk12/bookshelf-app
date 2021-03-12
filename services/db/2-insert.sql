\c books
CREATE TABLE (
ID INT,
TITLE  VARCHAR    NOT NULL,
AUTHOR VARCHAR    NOT NULL,
READ   BOOL NOT NULL
);


INSERT INTO books (ID,TITLE,AUTHOR,READ) VALUES (2, 'Harry Potter and the Philosophers Stone', 'J. K. Rowling', false);
INSERT INTO books (ID,TITLE,AUTHOR,READ) VALUES (1, 'On the Road', 'Jack Kerouac', true);
INSERT INTO books (ID,TITLE,AUTHOR,READ) VALUES (3, 'Green Eggs and Ham', 'Dr. Suess', true);