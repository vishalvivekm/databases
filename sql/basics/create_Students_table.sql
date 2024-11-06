CREATE DATABASE students_record;
USE students_record;
CREATE TABLE Students(
 ID INT AUTO_INCREMENT,
 # ID INT PRIMARY KEY,
 Name VARCHAR(50),
 Age INT,
 Grade INT,
 PRIMARY KEY(ID)
 );
 
 INSERT INTO Students (Name, Age, Grade)
 VALUES ('John Doe', 20, 86);

# INSERT INTO Students VALUES('John Doe', 20, 86);
 
 SELECT * FROM Students;
