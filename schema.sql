-- SQLite
-- SQLite Week 12

-- drop tables if they exist
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS quizzes;
DROP TABLE IF EXISTS results;
DROP TABLE IF EXISTS users;

-- create tables
create table students
(
student_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL, 
UNIQUE(student_id)
);

create table quizzes
(
quiz_id INTEGER PRIMARY KEY AUTOINCREMENT,
subject TEXT,
num_of_questions INTEGER,
quiz_date DATE,
UNIQUE(quiz_id)
);

CREATE TABLE results
(
student_id INTEGER,
quiz_id INTEGER,
score INTEGER
);

create table users
(
user_id INTEGER PRIMARY KEY AUTOINCREMENT,
username TEXT NOT NULL,
password TEXT NOT NULL, 
UNIQUE(user_id, username)
);

-- populate tables with basic data
INSERT INTO students
(student_id, first_name, last_name)
VALUES
(1, "John", "Smith");

INSERT INTO quizzes
(quiz_id, subject, num_of_questions, quiz_date)
VALUES
(1, "Python Basics", 5, "2015-02-05");

INSERT INTO results
(student_id, quiz_id, score)
VALUES
(1, 1, 85);

INSERT INTO users
(user_id, username, password)
VALUES
(1, "admin", "password");