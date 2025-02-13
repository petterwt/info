

CREATE TABLE employee (ID, name, salary, departmentID);

CREATE TABLE department (ID, name);

INSERT INTO department (ID, name) VALUES 
    (0, "Engineering"),
    (1, "HR"), 
    (2, "Engineering");

INSERT INTO employee (ID, name, salary, departmentID) 
VALUES 
    (1234, "Tom", 50.000, 0),
    (1235, "Bjørn", NULL, 1),
    (1345, "Ida", 60.000,  0);