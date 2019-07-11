CREATE TABLE IF NOT EXISTS Student (
    id int PRIMARY KEY,
    gpa float NOT NULL,
    firstName text NOT NULL,
    lastName text NOT NULL,
    admittedAs text NOT NULL,
    advisor text NOT NULL,
    totalCredits int NOT NULL,
    program text NOT NULL
);

CREATE TABLE IF NOT EXISTS Course(
  code varchar(20) PRIMARY KEY NOT NULL,
  departmentName TEXT NOT NULL,
  name TEXT NOT NULL,
  prereqCourses TEXT NOT NULL,
  coreqCourses TEXT NOT NULL,
  credit TEXT NOT NULL
  );

CREATE TABLE IF NOT EXISTS Term(
  name text NOT NULL
  );

INSERT INTO Term 
VALUES
("Winter"),
("Summer1"),
("Summer2"),
("Fall");


CREATE TABLE IF NOT EXISTS Instructor(
  name VARCHAR(20) PRIMARY KEY NOT NULL,
  thesisSupervisor TEXT NOT NULL,
  fundingAvailable BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Grade(
  letter TEXT NOT NULL,
  gpa FLOAT NOT NULL
  );

ALTER TABLE Grade
ADD gpa FLOAT NOT NULL;

INSERT INTO Grade 
VALUES
  ("A+", 4.30),
  ("A", 4.00),
  ("A-", 3.70),
  ("B+", 3.30),
  ("B", 3.00),
  ("B-", 2.70),
  ("C+", 2.30),
  ("C", 2.00),
  ("C-", 1.70),
  ("D+", 1.30),
  ("D", 1.00),
  ("D-", 0.70),
  ("F", 0);

  CREATE TABLE IF NOT EXISTS Program(
    thesis BOOLEAN DEFAULT FALSE,
    departmentName  TEXT NOT NULL,
    type TEXT NOT NULL,
    requiredType TEXT NOT NULL
    );

  CREATE TABLE IF NOT EXISTS TeachingAssistant(
    totalHours TEXT NOT NULL,
    student TEXT NOT NULL,
    assignedCourseCodes TEXT NOT NULL
    );

CREATE TABLE IF NOT EXISTS Class(
  code VARCHAR(20) NOT NULL,
  section TEXT NOT NULL,
  startTime TIME NOT NULL,
  endTime TIME NOT NULL,
  days TEXT NOT NULL,
  term TEXT NOT NULL,
  maxCapacity INT NOT NULL,
  enrolledStudents INT NOT NULL,
  type TEXT NOT NULL,
  year INT NOT NULL,
  roomNumber TEXT NOT NULL,
  profName TEXT NOT NULL,
  grade INT NOT NULL,
  name TEXT NOT NULL
  );

CREATE TABLE IF NOT EXISTS Advisor(
  name TEXT NOT NULL
  );
ALTER TABLE Student 
DROP admittedAs;

ALTER TABLE Student 
ADD COLUMN undergrad BOOLEAN DEFAULT FALSE,

ALTER TABLE Student
ADD COLUMN grad BOOLEAN DEFAULT FALSE;

ALTER TABLE Student
MODIFY Advisor int ;

INSERT INTO Student
VALUES 
(40061791, 2.98, "Matthew", "Massey", NULL, 48, "Computer Science", 1,0),
(17654321, 4.00, "Tony", "Hawk", 15839967, 125, "Engineering", 0,1),
(34254352, 1.8, "Sally", "Sadness", NULL, 22, "Psychology", 1,0),
(33999323, 4.3, "Jesus", "Christ", 25949503, 130, "Aerospace Engineering", 1,1),
(35055234, 3.6, "Jhon", "Doe", NULL, 88, "Electrical Engineering", 1,0),
(23483838, 3.2, "Jackie", "Chan", 25949503, 100, "Computer Science", 0,1),
(25324111, 2.5, "Pamella", "Anderson", NULL, 36, "Software Engineering", 1,0),
(12345678, 4.2, "Stephen", "Hawking", 31415926, 128, "Aerospace Engineering", 0,1),
(26441678, 2.8, "Jessica", "Jones", NULL, 59, "Software Engineering", 1,0),
(40033233, 3.8, "Bob", "Ross", NULL, 42, "Computation Arts", 1,0);
  