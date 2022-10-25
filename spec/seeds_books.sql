-- The SQL seeds
-- The contents of this file will vary for each project you'll work on. This file will contain all the SQL code needed to:
-- 
-- create the different tables your program needs.
-- insert some seed data into these tables so you can run your tests.
-- The SQL seed file music_database.sql is an example of a seed file: it contains instructions to create the tables albums and artists, as well as some data to fill these tables.
-- 
-- When you write RSpec tests for Ruby program, you can then use the seed data loaded in the database.
-- 
-- This can be a single file, or many different files, perhaps one for each table.

-- this clears the table for each test run through
TRUNCATE TABLE books RESTART IDENTITY;

-- these are my test records to insert into the test db

INSERT INTO books (title, author_name) VALUES ('Exhalations', 'David Chiang');
INSERT INTO books (title, author_name) VALUES ('The Alchemist', 'Paulo Coelho');

-- need to seed the TEST db with the structure of the prod db.
-- then load the seed into the test db