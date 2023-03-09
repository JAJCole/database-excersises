use employees;
/* Find all current or previous employees with first names 
'Irena', 'Vidya', or 'Maya' using IN. 
What is the employee number of the top three results?*/
select database();
select * from employees;
select emp_no, first_name from employees 
where first_name IN ('Irena','Vidya','Maya');
-- emp_no of top three results is 10200, 10397, 10610

/* Find all current or previous employees with first names
 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN.
 What is the employee number of the top three results? 
 Does it match the previous question? */
 select emp_no, first_name from employees 
 where first_name IN ('Irena', 'Vidya') OR ('Maya');
 -- emp-no of top three results is 10200, 10397, 10610
 -- This is the same as above
 
 /* Find all current or previous employees with first names 
 'Irena', 'Vidya', or 'Maya', using OR, and who is male.
 What is the employee number of the top three results.*/
 select emp_no, first_name, gender
 from employees
 where first_name IN ('Irena', 'Vidya', 'Maya')
 AND gender = 'M';
 -- Emp_no for the first three results are: 10200, 10397, 10821
 
 -- Find all unique last names that start with 'E'. 
 select last_name
 from employees
 WHERE last_name like 'e%';
 
 -- Find all unique last names that start or end with 'E'
 select last_name
 from employees
 WHERE last_name like 'e%'
 OR last_name like '%e';
 
 /* Find all unique last names that end with E,
 but does not start with E? */
 select last_name
 from employees
 WHERE last_name like '%e';
 
 -- Find all unique last names that start and end with 'E'
 select last_name
 from employees
 WHERE last_name like 'e%'
 AND last_name like '%e';
 
 /* Find all current or previous employees hired in the 90s. 
 Enter a comment with top three employee numbers.*/
 select first_name, last_name, emp_no, hire_date
 from employees
 where hire_date between '1990-01-01' and '1999-12-30';
 
 /* Find all current or previous employees born on Christmas. 
 Enter a comment with top three employee numbers.*/
 select first_name, hire_date, emp_no
 from employees
 where birth_date like '%-12-25';
 -- top three employee numbers 10078, 10115, 10261
 
 /* Find all current or previous employees hired in the 90s 
 and born on Christmas. 
 Enter a comment with top three employee numbers. */
 select first_name, hire_date, emp_no
 from employees
 where hire_date like '%-12-25'
 and hire_date between '1990-1-1' and '1999-12-31';
 
-- Find all unique last names that have a 'q' in their last name
select distinct last_name
from employees
where last_name like '%q%';

/* Find all unique last names that have a 'q' in their last name 
but not 'qu'.*/
select distinct last_name
from employees
where last_name like '%q%' 
and last_name not like '%qu%';

/*Find all employees with first names 'Irena', 'Vidya', or 'Maya',
and order your results returned by first name. 
In your comments, answer: What was the first and last name 
in the first row of the results? 
What was the first and last name of the last person in the table?*/
select first_name, last_name
from employees
where first_name in ('Irena','Vidya','Maya')
order by first_name;
-- First hit was Irena Reutenauer. Last hit was Vidya Simmen

/* (WATCH CLOSELY EXAMPLE)Find all employees with first names 'Irena', 'Vidya', or 'Maya',
 and order your results returned by first name and then last name.
 In your comments, answer: What was the first and last name in the first
 row of the results? What was the first and last name 
 of the last person in the table?*/
 select first_name, last_name
 from employees
 where first_name in ('Irena','Vidya','Maya')
 order by first_name;
 select first_name, last_name
 from employees
 where first_name in ('Irena','Vidya','Maya')
 order by last_name;
-- Irena Reutenauer and Maya Zyda

/* Find all employees with first names 'Irena', 'Vidya', or 'Maya', 
and order your results returned by last name and then first name. 
In your comments, answer: What was the first and last name 
in the first row of the results? What was the first and last name 
of the last person in the table? */
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name and first_name;
-- Vidya Awdeh/ Maya Melter

/* Write a query to to find all employees whose last name starts 
and ends with 'E'. Sort the results by their employee number. 
Enter a comment with the number of employees returned, 
the first employee number and their first and last name, 
and the last employee number with their first and last name.*/
select last_name, first_name, emp_no
from employees
where last_name like '%e%'
order by emp_no;
/*1802 employees returned, first emp_no of 10001 and name of Georgi Facello
emp_no of 11802 for the last employee of the name Katsuo Benzmuller */

/* Write a query to to find all employees whose last name starts and 
ends with 'E'. Sort the results by their hire date, 
so that the newest employees are listed first. 
Enter a comment with the number of employees returned,
 the name of the newest employee, and the name of the oldest employee.*/
 select first_name, last_name, emp_no, hire_date
 from employees
 where last_name like 'e%' and last_name like '%e'
 order by hire_date DESC;
 
 /*Find all employees hired in the 90s and born on Christmas. 
 Sort the results so that the oldest employee who was hired last 
 is the first result. Enter a comment with the number of employees returned,
 the name of the oldest employee who was hired last, 
 and the name of the youngest employee who was hired first. */
 select first_name, last_name, hire_date, birth_date, emp_no
 from employees
 where hire_date between '1990-1-1' and '1999-12-31'
 and birth_date like '%-12-25'
 order by hire_date desc, birth_date desc;
 /* 362 employees returned, the oldest hired last is Khun Bernini
 the youngest employee hired first is Alsem Cappello

 
 
 
 
 
 