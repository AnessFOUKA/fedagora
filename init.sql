CREATE TABLE IF NOT EXISTS Users(
    user_id TEXT PRIMARY KEY,
    username VARCHAR(15),
    hashed_password TEXT,
    first_name TEXT,
    last_name TEXT,
    bio TEXT,
    email VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS Groups_users(
    user_id TEXT,
    group_id TEXT
);

CREATE TABLE IF NOT EXISTS Groups(
    group_id TEXT PRIMARY KEY,
    group_name VARCHAR(15),
    group_description TEXT,
    group_is_admin BOOLEAN
);

CREATE TABLE IF NOT EXISTS Messages(
    message_id TEXT PRIMARY KEY,
    message_text TEXT,
    user_id TEXT,
    group_id TEXT
);

CREATE TABLE IF NOT EXISTS Scripts(
    script_id TEXT PRIMARY KEY,
    script_name VARCHAR(30),
    script_description TEXT,
    script_authorisation_rate INT
);

CREATE USER web_user
WITH LOGIN
PASSWORD 'myPassword';

GRANT INSERT,SELECT,UPDATE,DELETE ON ALL TABLES IN SCHEMA public TO web_user;