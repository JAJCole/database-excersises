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
 where hire_date like '%-12-25';
 -- top three employee numbers 10050, 10456, 10463
 
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


 
 
 
 
 
 