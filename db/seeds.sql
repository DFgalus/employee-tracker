--Departments
--id = INT primary key

INSERT INTO department (id, name) VALUES (1, 'Engineering');
INSERT INTO department (id, name) VALUES (2, 'Sales');
INSERT INTO department (id, name) VALUES (3, 'Finance');
INSERT INTO department (id, name) VALUES (4, 'Legal');
INSERT INTO department (id, name) VALUES (10, 'HR');

--ROLES

INSERT INTO role (title, salary, departmentID) VALUES ('Senior Engineer', 150000, 1);
INSERT INTO role (title, salary, departmentID) VALUES ('Engineer', 125000, 1);

INSERT INTO role (title, salary, departmentID) VALUES ('Sales Manager', 130000, 2);
INSERT INTO role (title, salary, departmentID) VALUES ('Sales Rep.', 110000, 2);

INSERT INTO role (title, salary, departmentID) VALUES ('Accountant', 135000, 3);
INSERT INTO role (title, salary, departmentID) VALUES ('Billing Coordinator', 120000, 3);

INSERT INTO role (title, salary, departmentID) VALUES ('Lawyer', 145000, 4);

INSERT INTO role (title, salary, departmentID) VALUES ("Operations Manager", 145000, 5);

INSERT INTO role (title, salary, departmentID) VALUES ("HR Coordinator", 105000, 10);


--Employees
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('John', 'Coltrane',1, null );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Lester', 'Young', 2, 1);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Ella', 'Fitzgerald', 3, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('William', 'Basie', 4, 3);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Benny', 'Goodman',5, 3);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Charlie', 'Parker', 6, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Sarah', 'Vaughn', 7, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Sonny', 'Rollins', 8, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Clark', 'Terry', 9, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Carmen', 'McRae', 10, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Edward', 'Ellington', 2, 1);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Thomas', 'Waller', 11, null);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('John', 'Gillespie', 7, 6);
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Shirley', 'Horn', 2, 1);

