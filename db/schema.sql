DROP DATABASE IF EXISTS d86sc7rsomviq5;
CREATE DATABASE d86sc7rsomviq5;
\c d86sc7rsomviq5;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    lesson_title TEXT,
    videos_url TEXT,
    reading_material TEXT,
    categories_id INTEGER REFERENCES categories (id)
);

CREATE TABLE questions (
    id SERIAL PRIMARY KEY,
    question_text TEXT,
    answer TEXT,
    wrong_answer TEXT,
    lessons_id INTEGER REFERENCES lessons (id)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    name TEXT,
    post TEXT,
    date DATE
    -- date smalldatetime default GETDATE()
);