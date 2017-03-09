CREATE TABLE users (
id SERIAL PRIMARY KEY,
name TEXT DEFAULT NULL,
picture_url TEXT
);

CREATE TABLE tweets (
id SERIAL PRIMARY KEY,
user_id INTEGER REFERENCES users(id) NOT NULL,
content TEXT DEFAULT NULL
);






SELECT u.name, t.content, t.id
FROM tweets AS t
JOIN users AS u
ON t.user_id = u.id

SELECT u.name, t.content, t.id
FROM tweets AS t
JOIN users AS u
ON t.user_id=u.id
WHERE u.name=$1


INSERT INTO users
VALUES




-- If user doesn't exist,
    -- Insert name (and picture_url?) into users table

INSERT INTO users (name)
VALUES ($1)

[req.body.name]

-- find his id
(SELECT id
FROM users
WHERE name=$1) as u_id

[req.body.name]

-- insert (user_id, tweet_content) into tweets table
"INSERT INTO tweets (user_id, content)
VALUES ((SELECT id
        FROM users
        WHERE name=$1),  $2)", [req,body.name, req.body.text]

INSERT INTO tweets (user_id, content)
VALUES ((SELECT id FROM users WHERE name='Tom Hanks'),  'New Tweet')


SELECT *
FROM users
WHERE name='Chris'