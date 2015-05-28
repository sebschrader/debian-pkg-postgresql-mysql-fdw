CREATE DATABASE testdb;
USE testdb;

CREATE USER 'foo'@'127.0.0.1' IDENTIFIED BY 'bar';
GRANT ALL PRIVILEGES ON testdb.* TO 'foo'@'127.0.0.1';

CREATE TABLE department(
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  departement_name VARCHAR(20)
);

CREATE TABLE employee(
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  emp_name VARCHAR(20),
  emp_dept_id INT REFERENCES department(department_id)
);
