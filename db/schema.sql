DROP DATABASE IF EXISTS Divine;
CREATE DATABASE Divine;
USE Divine;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS role_table;
DROP TABLE IF EXISTS employees;

CREATE TABLE department (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(30) 
);

CREATE TABLE role_table (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary decimal(10,2),
  department_id INTEGER
--   CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employees (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER
--   CONSTRAINT fk_role_table FOREIGN KEY (role_id) REFERENCES role_table(id),
--   CONSTRAINT fk_employees FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL 
);