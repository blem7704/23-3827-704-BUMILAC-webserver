CREATE DATABASE school;

USE school;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR,
    year_level INT
)

INSERT INTO students (name, course, year_level) 
VALUES 
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos', 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3);

UPDATE students SET name = 'Armel Bumilac' WHERE student_id = 3;

DELETE FROM students WHERE name = 'Juan Dela Cruz';

SELECT * FROM students

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    description VARCHAR(255),
    units INT
);

INSERT INTO courses (course_name, description, units)
VALUES
('MOBILE APPLICATION DESIGN AND DEVELOPMENT', 'an academic course and technical discipline that covers the end-to-end process of conceptualizing, designing, building, testing, and deploying software applications for mobile devices such as smartphones and tablets', 3),
('WEB INFORMATION SYSTEM', 'Explores how to design, build, and manage internet-based applications that connect users, business processes, and databases', 3)
('PHYSICAL EDUCATION', 'Customize physical activities', 2);

SELECT * FROM courses