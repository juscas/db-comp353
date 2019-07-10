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
  code TEXT PRIMARY KEY NOT NULL,
  departmentName TEXT NOT NULL,
  
  )