-- TRUNCATE TABLE posts RESTART IDENTITY;
TRUNCATE TABLE accounts RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO accounts (email, username) VALUES ('vw@gmail.com', 'vw');
INSERT INTO accounts (email, username) VALUES ('sf@gmail.com', 'sf');
INSERT INTO accounts (email, username) VALUES ('ha@gmail.com', 'ha');
INSERT INTO accounts (email, username) VALUES ('person@gmail.com', 'person');
INSERT INTO accounts (email, username) VALUES ('last@gmail.com', 'last');