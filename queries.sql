/* i. Find ID, first name and last name of all the students who have taken
Database course and received an A or A+ grade for the course. */
SELECT id, firstName, lastName
FROM Student, ClassLog
WHERE Student.s_id = ClassLog.id AND ClassLog.code = "COMP353" AND (ClassLog.grade = "A" OR ClassLog.grade = "A+");

/* ii. Find ID, first name, last name and number of programs of students who
are enrolled in at least two different programs in the Computer Science
department. */
SELECT e.s_id, e.firstName, e.lastName, count(*) as total_num_programs_enrolled_in FROM
(SELECT Student.s_id, firstName, lastName, count(*)
FROM Student, EnrolledProgram, Program
WHERE EnrolledProgram.s_id = Student.s_id AND Program.programName = EnrolledProgram.enrolled AND Program.department = 'Computer Science and Software Engineering'
GROUP BY EnrolledProgram.s_id HAVING count(*) > 1) e, EnrolledProgram f WHERE e.s_id = f.s_id GROUP BY e.s_id;

/* iii. Find the name of all the instructors who taught Comp 352 in the fall term
of 2018 but have never taught the same course before. */
SELECT professor
FROM ClassInfo
WHERE code = 'COMP352' AND term = 'Fall' AND year <= 2018
GROUP BY professor HAVING COUNT(*) = 1;

/* iv. Find the name of all the programs offered by the Computer Science
department along with the number of credits required for completion in
each program. */
SELECT *
FROM Program
WHERE department = 'Computer Science and Software Engineering';

/* v. Find the name and IDs of all the undergraduate students who do not have
an advisor. */
SELECT z.s_id, z.firstName, z.lastName
FROM EnrolledProgram e, Program f, Student z
WHERE e.s_id = z.s_id AND e.enrolled = f.programName AND f.isGrad = 0 AND e.ep_advisor IS NULL;

/* vi. Find the ID, name and assignment mandate of all the graduate students
who are assigned as teaching assistants to Comp 353 for the summer term
of 2019. */
SELECT s.s_id, s.firstName, s.lastName
FROM Student s, TeachingAssistant t
WHERE s.s_id = t.s_id && t.term = "Summer" && t.assignedCourseCodes = "COMP353";

/* vii Find the name of all the supervisors in the Computer Science department
who have supervised at least 20 students. */
SELECT name
FROM (
  SELECT name, count(*)
  FROM SupervisorLog e, Instructor f, Program z
  WHERE e.sl_prof = f.id AND e.sl_prog = z.programName AND z.department = 'Computer Science and Software Engineering'
  GROUP BY sl_prof HAVING count(*) > 19) f;

/* viii Find the details of all the courses offered by the Computer Science
department for the summer term of 2019. Details include Course name,
section, room location, start and end time, professor teaching the course,
max class capacity and number of enrolled students. */
/* Add regex for Summer1/2? */
SELECT DISTINCT Co.name, Ci.room, Ci.startTime, Ci.endTime, Ci.professor, Ci.maxCapacity, Ci.enrolledStudents
FROM ClassInfo Ci, Course Co, Department D
WHERE D.departmentName = 'Computer Science and Software Engineering' AND D.departmentName = Co.departmentName AND Co.code = Ci.code AND Ci.term = 'Summer2' AND Ci.year = 2019;

/* ix For each department, find the total number of courses offered by the
department. */
SELECT COUNT(*), departmentName
FROM Course
GROUP BY departmentName;

/* x For each program, find the total number of students enrolled into the
program. */
SELECT enrolled, count(*)
FROM EnrolledProgram
GROUP BY enrolled;
