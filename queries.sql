/*
viii. Find the details of all the courses offered by the Computer Science
department for the summer term of 2019. Details include Course name,
section, room location, start and end time, professor teaching the course,
max class capacity and number of enrolled students.
ix. For each department, find the total number of courses offered by the
department.
*/

/* viii */
// Add regex for Summer1/2?
SELECT DISTINCT Co.name, Ci.room, Ci.startTime, Ci.endTime, Ci.professor, Ci.maxCapacity, Ci.enrolledStudents FROM ClassInfo Ci, Course Co, Department D WHERE D.departmentName = 'Computer Science and Software Engineering' AND D.departmentName = Co.departmentName AND Co.code = Ci.code AND Ci.term = 'Summer2' AND Ci.year = 2019;

/* ix */
SELECT COUNT(*), departmentName FROM Course GROUP BY departmentName;
