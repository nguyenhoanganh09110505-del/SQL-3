CREATE DATABASE data_manager;
USE data_manager;
CREATE TABLE students(
     student_id VARCHAR(20) PRIMARY KEY,
     full_name VARCHAR(100) NOT NULL,
     birth_date DATE,
     gender VARCHAR(10) NOT NULL,
     CHECK (gender IN ('MALE','FEMALE','OTHER')),
     email VARCHAR(255)
);

INSERT INTO students 
(student_id, full_name, birth_date, gender, email)
VALUE 
('SV001','NGUYEN VAN A','2000-05-10','MALE','a@gmail.com'),
('SV002','TRAN THI B','2000-11-09','FEMALE','b@gmail.com'),
('SV003','PHAM THI C','2000-09-20','FEMALE','c@gmail.com'),
('SV004','TRAN VAN D','2001-03-15','MALE','d@gmail.com'),
('SV005','LE THI E','2002-11-20','FEMALE', NULL);

SELECT * FROM students;
SELECT student_id, full_name, email
FROM students;

UPDATE students
SET email = 'e@gmail.com'
WHERE student_id = 'SV005';

SELECT*FROM students;

UPDATE students
SET gender = 'FEMALE'
WHERE student_id = 'VS005';

SELECT*FROM students;

DELETE FROM students
WHERE student_id = 'SV003';

SELECT*FROM students;

SELECT*FROM students
WHERE YEAR(birth_date) BETWEEN 2003 AND 2005;

SELECT*FROM students 
WHERE gender = 'MALE' OR gender = 'FEMALE';

SELECT*FROM students
WHERE student_id IN ('SV001','SV004','SV005');

SELECT student_id, full_name, birth_date
FROM students;