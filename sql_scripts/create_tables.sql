create database	if not exists learning_platform;
use learning_platform;

CREATE TABLE if not exists users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE if not exists courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES users(user_id)
);

CREATE TABLE if not exists lessons (
    lesson_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE if not exists quizzes (
    quiz_id INT AUTO_INCREMENT PRIMARY KEY,
    lesson_id INT,
    title VARCHAR(100) NOT NULL,
    questions TEXT,
    FOREIGN KEY (lesson_id) REFERENCES lessons(lesson_id)
);

CREATE TABLE if not exists assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    lesson_id INT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    deadline DATETIME,
    FOREIGN KEY (lesson_id) REFERENCES lessons(lesson_id)
);

CREATE TABLE if not exists user_progress (
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    lesson_id INT,
    completed BOOLEAN,
    progress TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (lesson_id) REFERENCES lessons(lesson_id)
);
