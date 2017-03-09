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






SELECT users.name, t.content, t.id
FROM tweets AS t
JOIN users
ON t.user_id=users.id
