-- Select the name of all Computer science students in first semester.
SELECT
    name
FROM
    students
WHERE
    major = "Computer Science"
    AND semester = 1;

-- Select ID and name of all Computer science students ordered by semester.
SELECT
    studentID,
    name
FROM
    students
WHERE
    major = "Computer Science"
ORDER BY
    semester;

-- Select the Name of all courses having a course code starting with `DAT`.
SELECT
    courseName
FROM
    courses
WHERE
    courseCode LIKE "DAT%";


-- Select all courses that do not have an instructor assigned.
SELECT
    courseName
FROM
    courses
WHERE
    instructor IS NULL;

--  Write a query that shows the number of students for each major. 
SELECT
    major,
    COUNT(studentID) AS students
FROM
    students
GROUP BY
    major;

-- Write a query that shows the number of students in each semester. 
SELECT
    semester,
    COUNT(studentID) AS students
FROM
    students
GROUP BY
    semester;

-- Create a list of students showing how many courses they have passed.
SELECT
    students.name,
    COUNT(enrollments.passed) AS passed,
FROM
    students
JOIN
    enrollments
ON
    students.studentID = enrollments.studentID
WHERE
    enrollments.passed = 1
GROUP BY
    students.name;

-- Create a list of students that have passed 2 or more courses.
SELECT
    students.name,
    COUNT(enrollments.passed) AS passed
FROM
    students
JOIN
    enrollments
ON  
    students.studentID = enrollments.studentID
WHERE
    enrollments.passed = 1
GROUP BY
    students.studentID
HAVING
    COUNT(enrollments.passed) >= 2;

-- Find all courses where both computer science and electrical engineering students have been enrolled.
SELECT
    courseName
FROM
    courses
JOIN
    enrollments
ON
    courses.courseID = enrollments.courseID
JOIN
    students
ON
    enrollments.studentID = students.studentID
WHERE
    students.major = "Computer Science"
    AND courses.courseID IN (
        SELECT
            courseID
        FROM
            enrollments
        JOIN
            students
        ON
            enrollments.studentID = students.studentID
        WHERE
            students.major = "Electrical Engineering"
    );

-- OR 

SELECT
    courses.courseName
FROM
    courses
JOIN
    enrollments
ON
    courses.courseID = enrollments.courseID
JOIN
    students
ON
    enrollments.studentID = students.studentID
WHERE
    students.major IN ("Computer Science", "Electrical Engineering")
GROUP BY
    courses.courseID
HAVING
    COUNT(DISTINCT students.major) = 2;