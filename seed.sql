DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department (
	id INTEGER AUTO_INCREMENT,
    names VARCHAR(30),
    PRIMARY KEY (id)
    );

CREATE TABLE roles ( 
	id INTEGER AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL (20, 2),
    department_ID INT,
    PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department(id)
    );

CREATE TABLE employee (
id INTEGER AUTO_INCREMENT,
	first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INTEGER,
    manager_id INTEGER,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    PRIMARY KEY(id)
    );

INSERT INTO department (names) VALUES ("Sales");
INSERT INTO department (names) VALUES ("IT");
INSERT INTO department (names) VALUES ("Legal");
INSERT INTO department (names) VALUES ("Marketing");
INSERT INTO department (names) VALUES ("Finance");

INSERT INTO roles (title, salary, department_ID) VALUES ("Team Lead", 5, NULL);
INSERT INTO roles (title, salary, department_ID) VALUES ("Sales Lead", 4, 1);
INSERT INTO roles (title, salary, department_ID) VALUES ("Sales Associate", 3, 1);
INSERT INTO roles (title, salary, department_ID) VALUES ("IT Lead", 4, 2);
INSERT INTO roles (title, salary, department_ID) VALUES ("IT Assistant", 3, 2);
INSERT INTO roles (title, salary, department_ID) VALUES ("Legal Team Head", 5, 3);
INSERT INTO roles (title, salary, department_ID) VALUES ("Legal Team Associate", 4, 3);
INSERT INTO roles (title, salary, department_ID) VALUES ("Marketing Lead", 4, 4);
INSERT INTO roles (title, salary, department_ID) VALUES ("Marketing Associate", 3, 4);
INSERT INTO roles (title, salary, department_ID) VALUES ("Financial Lead", 5, 5);
INSERT INTO roles (title, salary, department_ID) VALUES ("Financial Assistant", 3, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Steve", "Hobart", 1, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Billy", "Haynes", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Carol", "Downs", 3, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("John", "Saunders", 3, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Jesus", "Rodrigo", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Talia", "Garcia", 5, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Patricia", "Zahn", 6, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Sonshine", "Danvers", 7, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Jaden", "Korr", 8, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Kyle", "Katarn", 9, 9);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Corran", "Horn", 10, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Mirax", "Terrik", 11, 11);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Wedge", "Antilles", 11, 11);
