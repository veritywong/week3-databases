-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE artists RESTART IDENTITY;
TRUNCATE TABLE albums RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.
INSERT INTO artists (name, genre) VALUES ('ABBA', 'Pop');
INSERT INTO albums (title, release_year, artist_id) VALUES('Waterloo', '1974', '2');
INSERT INTO albums (title, release_year, artist_id) VALUES('Super Trouper', '1980', '2');