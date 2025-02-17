DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE IF NOT EXISTS students (
    studentID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    semester INTEGER,
    major TEXT
);

CREATE TABLE IF NOT EXISTS courses (
    courseID INTEGER PRIMARY KEY,
    courseCode TEXT NOT NULL,
    courseName TEXT NOT NULL,
    credits INTEGER,
    instructor TEXT
);

CREATE TABLE IF NOT EXISTS enrollments (
    enrollmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    studentID INTEGER,
    courseID INTEGER,
    semester TEXT,
    passed BOOLEAN,
    grade TEXT,
    FOREIGN KEY (studentID) REFERENCES students(studentID),
    FOREIGN KEY (courseID) REFERENCES courses(courseID)
);


INSERT INTO students (studentID, name, semester, major) VALUES
    (1, "Alice", 1, "Computer Science"),
    (2, "Bob", 2, "Electrical Engineering"),
    (3, "Charlie", 3, "Computer Science"),
    (4, "David", 4, "Electrical Engineering"),
    (5, "Eve", 5, "Computer Science"),
    (6, "Frank", 6, "Electrical Engineering"),
    (7, "Grace", 1, "Computer Science"),
    (8, "Heidi", 2, "Electrical Engineering"),
    (9, "Ivan", 3, "Computer Science"),
    (10, "Judy", 4, "Electrical Engineering"),
    (11, "Karl", 5, "Computer Science"),
    (12, "Liam", 6, "Electrical Engineering");

INSERT INTO courses (courseID, courseCode, courseName, credits, instructor) VALUES
    (105, "DAT110", "Introduction to Programming", 10, "Dr. Turing"),
    (106, "DAT120", "Algorithms and Data Structures", 10, "Dr. Knuth"),
    (107, "DAT200", "Database Systems", 10, "Dr. Codd"),
    (108, "DAT210", "Operating Systems", 10, "Dr. Thompson"),
    (109, "DAT220", "Software Engineering", 10, NULL),
    (110, "DAT230", "Computer Networks", 10, "Dr. Cerf"),
    (111, "DAT240", "Web Development", 10, "Dr. Berners-Lee"),
    (112, "DAT250", "Artificial Intelligence", 10, NULL),
    (113, "DAT260", "Machine Learning", 10, "Dr. Hinton"),
    (114, "DAT270", "Cyber Security", 10, "Dr. Diffie"),
    (115, "MAT100", "Calculus I", 10, "Dr. Euler"),
    (116, "MAT110", "Linear Algebra", 10, "Dr. Gauss"),
    (117, "MAT120", "Discrete Mathematics", 10, "Dr. Cantor"),
    (118, "MAT130", "Probability and Statistics", 10, "Dr. Kolmogorov");

INSERT INTO enrollments (studentID, courseID, semester, passed, grade) VALUES
    (1, 105, "Fall 2024", 1, "A"),
    (2, 106, "Spring 2024", 1, "B"),
    (3, 107, "Fall 2024", 0, NULL),
    (4, 108, "Spring 2024", 1, "C"),
    (5, 109, "Fall 2024", 0, NULL),
    (6, 110, "Spring 2024", 1, "B"),
    (7, 111, "Fall 2024", 1, "A"),
    (8, 112, "Spring 2024", 0, NULL),
    (9, 113, "Fall 2024", 1, "A"),
    (10, 114, "Spring 2024", 1, "B"),
    (11, 115, "Fall 2024", 1, "A"),
    (12, 116, "Spring 2024", 0, NULL),
    (3, 106, "Spring 2024", 1, "B"),
    (3, 108, "Fall 2023", 1, "A"),
    (4, 107, "Spring 2023", 1, "B"),
    (4, 109, "Fall 2023", 1, "A"),
    (5, 110, "Spring 2023", 1, "B"),
    (5, 111, "Fall 2023", 1, "A"),
    (6, 112, "Spring 2023", 1, "B"),
    (6, 113, "Fall 2023", 1, "A"),
    (7, 114, "Spring 2023", 1, "B"),
    (7, 115, "Fall 2023", 1, "A"),
    (8, 116, "Spring 2023", 1, "B"),
    (8, 105, "Fall 2023", 1, "A"),
    (9, 106, "Spring 2023", 1, "B"),
    (9, 107, "Fall 2023", 1, "A"),
    (10, 108, "Spring 2023", 1, "B"),
    (10, 109, "Fall 2023", 1, "A"),
    (11, 110, "Spring 2023", 1, "B"),
    (11, 111, "Fall 2023", 1, "A"),
    (12, 112, "Spring 2023", 1, "B"),
    (12, 113, "Fall 2023", 1, "A");