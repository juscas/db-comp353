/*
viii. Find the details of all the courses offered by the Computer Science
department for the summer term of 2019. Details include Course name,
section, room location, start and end time, professor teaching the course,
max class capacity and number of enrolled students.
ix. For each department, find the total number of courses offered by the
department.
*/

/* viii */
SELECT Cl.name, Cl.section, Cl.roomNumber, Cl.startTime, Cl.endTime, Cl.profName, Cl.maxCapacity, Cl.enrolledStudents FROM Class Cl, Course Co, Department D WHERE D.name = "Computer Science" AND D.name = Co.name AND Cl.term = "Fall" AND Cl.year = "2019";

/* ix */
SELECT COUNT(SELECT * FROM Course C WHERE C.departmentName = "Computer Science"); /* loop this */
