# SQL exercises, Part I. (create and select)

## Exercise #1: Try it DB

Go to https://www.sqlitetutorial.net/tryit/
Copy-paste the following commands and execute them.
*You need to execute one command at a time.*

#### Create employee table
```SQL
CREATE TABLE employee (ID, name, salary, departmentID);
```

#### Create department table
```SQL
CREATE TABLE department (ID, name);
```

#### Insert departments
```SQL
INSERT INTO department (ID, name) VALUES 
    (0, "Engineering"),
    (1, "HR"), 
    (2, "Engineering");
```
#### Insert empoyees
```SQL
INSERT INTO employee (ID, name, salary, departmentID) 
VALUES 
    (1234, "Tom", 50.000, 0),
    (1235, "Bjørn", NULL, 1),
    (1345, "Ida", 60.000,  0);
```

#### Check data empoyees
```SQL
SELECT * FROM department;
SELECT * FROM employee;
```

## Exercise #2: Try it DB - INSERT

* Insert a new employee into the database.
* Write an update to change the department of employee `Ida` to `2`.
* `DELETE` employee `Tom`.
  
* Refresh the page, this should remove everything.
Now create the tables again, but include a column in the `department` table, that shows the `employeeId` of a deparment manager.