
-- This is a comment

--SQL- Structed Query language

--everything is a "statement"
--There are, primarily, two typers of statements:
--1. Commands: SQL statements that when excuted effect some change on the database.
--2. Queries: SQL statements that when excuted retrieve data for read-only purposes.

--Before any data can be stored, we need to define a table:
Create Table user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 0
);

--CRUD(s)

--Create
INSERT INTO user (
    first_name,
    last_name,
    hobbies
)VALUES (
    "Patrick",
    "Star",
    "Jellyfishing and Krabby Patties"
);

--READ
SELECT * FROM user;
SELECT id, first_name, is_online FROM user;
SELECT *FROM user WHERE id= 1;

-- UPDATE
UPDATE user SET
    first_name = "spongebob",
    last_name = "Squarepants",
    is_online = 1
    WHERE id = 1;

--DELETE
DELETE FROM user; -- this one deletes the entire table.
DELETE FROM user WHERE id =2; -- this one only deletes a single element.

--mini challenge--

Insert into user(
    first_name ,
    last_name,
    hobbies
) VALUES(
    "Thomas",
    "Jones",
    "skiing and bird watching",
);

INSERT into user(
    first_name,
    last_name,
    hobbies
)VALUES(
    " Jenny",
    "Rodgers",
    "Code and watch YouTube videos"
);

