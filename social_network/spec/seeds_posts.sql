TRUNCATE TABLE accounts RESTART IDENTITY;
TRUNCATE TABLE posts RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO accounts (email, username) VALUES ('vw@gmail.com', 'vw');
INSERT INTO posts (title, content, views, account_id) VALUES ('Greeting', 'Hello World!', '1', '1');
INSERT INTO posts (title, content, views, account_id) VALUES ('Evening', 'Eating food', '1', '1');