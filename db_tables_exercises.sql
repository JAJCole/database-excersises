show databases;
use albums_db;
select database();
show tables;
use employees;
select database();
show tables;
-- Which table(s) do you think contain a numeric type column? 
-- Salaries. employees also has numeric data
show create table employees;

-- Which table(s) do you think contain a string type column?
-- All others, (department, dept emp, dept_managers, employees, titles *continued next line*
-- has string values (cont from above line)
show create table departments; -- and all other categories

-- Which table(s) do you think contain a date type column?
-- employees has date type data --check other categories

-- What is the relationship between the employees and the departments tables? 
-- 

show create table employees;
/* CREATE TABLE `employees` (
  `emp_no` int NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
*/
show create table departments;
/*CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
*/
show create table dept_emp;
/*CREATE TABLE `dept_emp` (
  `emp_no` int NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1
*/
-- After viewing three tables, the relationship appears to be that the dept_no is what the tables have in common

show create table dept_manager;

