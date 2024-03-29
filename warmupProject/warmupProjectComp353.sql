CREATE DATABASE IF NOT EXISTS irc353_1;

USE irc353_1;

CREATE TABLE IF NOT EXISTS Student (
  s_id int(11) NOT NULL,
  firstName text NOT NULL,
  lastName text NOT NULL,
  totalCredits int(11) NOT NULL,
  PRIMARY KEY (s_id)
);

INSERT INTO Student
VALUES
(57493390, "Fred", "Rooney", 54),
(50463696, "George", "Costanza", 70),
(53932584, "Jack", "Hughes", 32),
(83791402, "Anthony", "Roy", 23),
(34218409, "Yan", "Galway", 4),
(94837921, "Hugh", "Allen", 60),
(32419483, "David", "Tool", 20),
(43982014, "Robert", "Louis", 33),
(75729303, "Kevin", "Terry", 20),
(12347401, "John", "Wayne", 120),
(32918347, "Adam", "West", 29),
(23859103, "Christian", "Bale", 64),
(12392014, "Andrew", "Shaw", 65),
(32190348, "Paul", "Byron", 41),
(01984012, "Max", "Domi", 13),
(38320048, "Jesperi", "Kotkaniemi", 15),
(24189032, "Jonathan", "Drouin", 92),
(29187561, "Jeff", "Petry", 26),
(28381944, "Shea", "Weber", 6),
(23847773, "Victor", "Mete", 53),
(55810372, "Ryan", "Poehling", 35);

CREATE TABLE IF NOT EXISTS Course (
  code varchar(20) PRIMARY KEY NOT NULL,
  departmentName TEXT NOT NULL,
  name TEXT NOT NULL,
  prereqCourses TEXT ,
  coreqCourses TEXT ,
  credit TEXT NOT NULL
);

INSERT INTO Course VALUES('COMP248', 'Computer Science and Software Engineering', 'Object Oriented Programming 1', NULL, NULL, 3);
INSERT INTO Course VALUES('COMP249', 'Computer Science and Software Engineering', 'Object Oriented Programming 2', 'COMP248', NULL, 3);
INSERT INTO Course VALUES('COMP346', 'Computer Science and Software Engineering', 'Operating Systems', 'COMP228,COMP352', NULL, 3);
INSERT INTO Course VALUES('COMP348', 'Computer Science and Software Engineering', 'Principles of Programming Languages', 'COMP249', NULL, 3);
INSERT INTO Course VALUES('COMP232', 'Computer Science and Software Engineering', 'Mathematics for Computer Science', NULL, NULL, 3);
INSERT INTO Course VALUES('SOEN287', 'Computer Science and Software Engineering', 'Web Programming', 'COMP248', NULL, 3);
INSERT INTO Course VALUES('COMP228', 'Computer Science and Software Engineering', 'System Hardware', 'COMP248', NULL, 3);
INSERT INTO Course VALUES('ENCS282', 'Computer Science and Software Engineering', 'Technical Writing and Communication', NULL, NULL, 3);
INSERT INTO Course VALUES('COMP335', 'Computer Science and Software Engineering', 'Introduction to Theoretical Computer Science', 'COMP249,COMP232', NULL, 3);
INSERT INTO Course VALUES('COMP354', 'Computer Science and Software Engineering', 'Introduction to Software Engineering', 'COMP352,ENCS282', NULL, 4);
INSERT INTO Course VALUES('ENCS393', 'Computer Science and Software Engineering', 'Social and Ethical Dimensions of Information', 'ENCS282', NULL, 3);

CREATE TABLE IF NOT EXISTS Term (
  name text NOT NULL
);

INSERT INTO Term
VALUES
("Winter"),
("Summer1"),
("Summer2"),
("Fall");

CREATE TABLE IF NOT EXISTS Instructor (
  thesisSupervisor tinyint(1) DEFAULT '0',
  fundingAvailable tinyint(1) DEFAULT '0',
  id int(11) NOT NULL,
  name text NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Grade (
  letter VARCHAR(2) PRIMARY KEY NOT NULL,
  gpa FLOAT NOT NULL
);

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


CREATE TABLE Program (
  isThesis tinyint(1) DEFAULT 0,
  department varchar(100) DEFAULT NULL,
  creditsRequired int(11) NOT NULL,
  programName varchar(100) NOT NULL,
  isGrad tinyint(1) DEFAULT NULL,
  PRIMARY KEY (programName),
  KEY (department)
);

CREATE TABLE IF NOT EXISTS Program (
  thesis BOOLEAN DEFAULT FALSE,
  departmentName  TEXT NOT NULL,
  creditsRequired INT NOT NULL,
  type TEXT NOT NULL,
  requiredType TEXT NOT NULL
);

INSERT INTO Program
VALUES
(0, 'Mechanical, Industrial and Aerospace Engineering', 90, 'BSC Aerospace Engineering', 0),
(0, 'Building, Civil and Environmental Engineering', 90, 'BSC Civil Engineering', 0),
(0, 'Computer Science and Software Engineering', 90, 'BSC Computer Science',0),
(0, 'Electrical and Computer Engineering', 90, 'BSC Electrical Engineering', 0),
(0, 'Chemical and Materials Engineering', 90, 'BSC Material Engineering', 0);

CREATE TABLE IF NOT EXISTS Advisor (
  name TEXT NOT NULL,
  a_id int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (a_id)
);

INSERT INTO Advisor (name)
VALUES
("John Smith"),
("Peter John"),
("Jesus Christ"),
("Britney Spears"),
("Nelson Mandela"),
("Lebron James"),
("Justin Trudeau"),
("Donald Trump"),
("Becky Tel"),
("John Cena");

INSERT INTO Student
VALUES
(40061791, "Matthew", "Massey", 48),
(17654321, "Tony", "Hawk", 125),
(34254352, "Sally", "Sadness", 22),
(33999323, "Jesus", "Christ", 130),
(35055234, "Jhon", "Doe", 88),
(23483838, "Jackie", "Chan", 100),
(25324111, "Pamella", "Anderson", 36),
(12345678, "Stephen", "Hawking", 128),
(26441678, "Jessica", "Jones", 59),
(40033233, "Bob", "Ross", 42);

INSERT INTO Instructor
VALUES
(1,1,25949503,"God"),
(1,1,15839967,"Snoop Dogg"),
(1,0,31415926,"Neal Armstrong"),
(0,0,11119495,"Bruce Willis"),
(0,0,34442587,"Bruce Banner"),
(0,0,22583930,"Christopher Robbin"),
(0,0,33234588, "Jane Doe");

CREATE TABLE IF NOT EXISTS ClassInfo (
  year int NOT NULL,
  section varchar(10),
  professor TEXT,
  code varchar(10),
  term varchar(10),
  room text,
  startTime TIME,
  endTime TIME,
  type TEXT,
  maxCapacity int,
  enrolledStudents int,
  days text,
  PRIMARY KEY(year, section, term, code)
);

INSERT INTO ClassInfo
VALUES
(2016,  'A', 'Khaled Jababo', 'COMP353', 'Fall', 'H545', '14:45:00', '17:30:00', 'lecture', 60, 50, 'M-W--'),
(2016,  'B', 'Khaled Jababo', 'COMP353', 'Fall', 'H645', '12:45:00', '13:30:00', 'tutorial', 30, 20, '-T--F'),
(2016,  'C', 'Khaled Jababo', 'COMP353', 'Winter', 'H832', '10:00:00', '12:30:00', 'tutorial', 30, 20, '-T--F'),
(2019,  'J', 'Khaled Jababo', 'COMP353', 'Summer2', 'H903', '08:45:00', '10:10:00', 'tutorial', 30, 25, 'M-W--'),
(2017,  'B', 'Aiman Hanna', 'COMP352', 'Summer1', 'H555', '17:30:00', '18:30:00', 'lecture', 78, 77, 'M--T-');

CREATE TABLE IF NOT EXISTS ClassLog (
  id int(11) NOT NULL,
  code varchar(20) NOT NULL DEFAULT '',
  grade varchar(2) DEFAULT NULL,
  year int(11) NOT NULL DEFAULT '0',
  term varchar(10) NOT NULL DEFAULT '',
  section char(1) DEFAULT NULL,
  PRIMARY KEY (id, code, year, term)
);

INSERT INTO ClassLog
VALUES
(40061791,"COMP248","A+",2018,"Summer1","A"),
(40061791,"COMP249","A-",2018,"Fall","C"),
(40061791,"COMP353","A",2019,"Summer2","C"),
(40061791,"COMP352","A-",2019,"Summer1","D"),
(40061791,"SOEN287","B+",2018,"Fall","C"),
(17654321,"COMP248","B-",2018,"Summer1","A"),
(17654321,"COMP249","C+",2018,"Fall","C"),
(17654321,"COMP353","D",2019,"Summer2","C");

INSERT INTO ClassLog
VALUES
(34254352,"COMP232","A",2017,"Fall","A"),
(34254352,"COMP346","C",2019,"Winter","C"),
(40061791,"COMP232","B",2018,"Winter","C"),
(17654321,"COMP354","F",2019,"Summer2","C"),
(12345678,"COMP232","A+",2016,"Fall","A"),
(12345678,"COMP352","A+",2017,"Winter","D"),
(12345678,"ENCS393","A+",2017,"Summer2","B"),
(23483838,"COMP248","C+",2017,"Summer2","A"),
(23483838,"COMP249","B",2017,"Fall","C"),
(25324111,"COMP249","D",2018,"Fall","C"),
(25324111,"ENCS282","D",2018,"Fall","C"),
(26441678 ,"COMP248","D",2018,"Fall","C"),
(33999323,"COMP248","A+",2018,"Fall","A"),
(34254352,"COMP248","C+",2018,"Fall","A"),
(35055234,"COMP248","B+",2018,"Fall","A"),
(40033233,"ENCS282","B+",2018,"Fall","C"),
(35055234,"ENCS282","B+",2018,"Fall","C");

CREATE TABLE IF NOT EXISTS TeachingAssistant (
  totalHours int(11) NOT NULL,
  assignedCourseCodes text NOT NULL,
  s_id int(11) NOT NULL,
  gpa float NOT NULL,
  term text,
  year text,
  PRIMARY KEY (s_id)
);

INSERT INTO TeachingAssistant
VALUES
(213, "ENCS393", 12345678, 4, "Winter", NULL),
(200, "COMP353", 17654321, 4.3, "Summer", 2019),
(95, "COMP232", 34254352, 3.6, "Fall", NULL),
(100, "COMP248", 40061791, 3.3, "Fall", NULL);

CREATE TABLE IF NOT EXISTS EnrolledProgram (
  s_id int(11) NOT NULL,
  enrolled varchar(100) NOT NULL,
  ep_advisor int(11)
);

INSERT INTO EnrolledProgram
VALUES
(40061791, "BSC Computer Science", 1),
(40061791, "BSC Software Engineering", 3),
(17654321, "BSC Material Engineering", 4),
(34254352, "MA Psychology", 1),
(33999323, "BSC Aerospace Engineering", NULL),
(35055234, "BSC Electrical Engineering", 1),
(23483838, "BSC Computer Science", 6),
(25324111, "MA Civil Engineering", NULL),
(12345678, "BSC Aerospace Engineering", 7),
(26441678, "BSC Software Engineering", 3),
(40033233, "BSC Computer Science", 9),
(40033233, "MA Computation Arts", 10),
(40061791, "MA Psychology", 8),
(40033233, "BSC Software Engineering", 8);

CREATE TABLE IF NOT EXISTS Department (
  departmentName varchar(100) NOT NULL,
  PRIMARY KEY (departmentName)
);

INSERT INTO Department
VALUES
("Building, Civil and Environmental Engineering"),
("Computer Science and Software Engineering"),
("Chemical and Materials Engineering"),
("Electrical and Computer Engineering"),
("Mechanical, Industrial and Aerospace Engineering"),
("Department of Psychology"),
("Department of English"),
("Department of History"),
("Department of Theology"),
("Department of Design and Computation Arts");

CREATE TABLE IF NOT EXISTS ResearchFunding (
  rf_instructor_id int(11) DEFAULT NULL,
  KEY rf_instructor_id (rf_instructor_id)
);

INSERT INTO ResearchFunding
VALUES
(15839967),
(25949503),
(31415926),
(45648987);

CREATE TABLE IF NOT EXISTS SupervisorLog (
  sl_prof int(11) NOT NULL,
  sl_s_id int(11) NOT NULL,
  sl_prog varchar(100) DEFAULT NULL,
  KEY sl_prof (sl_prof),
  KEY sl_s_id (sl_s_id),
  KEY sl_prog (sl_prog)
);

INSERT INTO SupervisorLog
VALUES
(25949503, 35055234, "PhD Computer Science"),
(31415926, 43982014, "MA Psychology"),
(45648987, 57493390, "MA Civil Engineering"),
(25949503, 12345678, "PhD Computer Science"),
(25949503, 12347401, "PhD Computer Science"),
(25949503, 12392014, "PhD Computer Science"),
(25949503, 17654321, "PhD Computer Science"),
(25949503, 23483838, "PhD Computer Science"),
(25949503, 23847773, "PhD Computer Science"),
(25949503, 23859103, "PhD Computer Science"),
(25949503, 24189032, "PhD Computer Science"),
(25949503, 25324111, "PhD Computer Science"),
(25949503, 26441678, "PhD Computer Science"),
(25949503, 28381944, "PhD Computer Science"),
(25949503, 29187561, "PhD Computer Science"),
(25949503, 32190348, "PhD Computer Science"),
(25949503, 32419483, "PhD Computer Science"),
(25949503, 32918347, "PhD Computer Science"),
(25949503, 33999323, "PhD Computer Science"),
(25949503, 34218409, "PhD Computer Science"),
(25949503, 34254352, "PhD Computer Science"),
(25949503, 35055234, "PhD Computer Science");
