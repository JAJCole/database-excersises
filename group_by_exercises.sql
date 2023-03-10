/* In your script, use DISTINCT to find the unique titles in the titles table.
 How many unique titles have there ever been? 
 Answer that in a comment in your SQL file.*/
 use employees;
 show tables;
 select * from titles;
 select distinct title, count(*)
 from titles
 group by title;

/* Write a query to to find a list of all unique last names of all 
employees that start and end with 'E' using GROUP BY.*/
use employees;
show tables;
select * from employees;
select distinct last_name -- dont need distinct because of group by
from employees
where last_name like 'e%e'
group by last_name; 

/* Write a query to to find all unique combinations of first and last names 
of all employees whose last names start and end with 'E'.*/
select distinct last_name, first_name
from employees
where last_name like 'e%e'
group by last_name, first_name;

/* Write a query to find the unique last names with a 'q' but not 'qu'. 
Include those names in a comment in your sql code. */
select distinct last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;
-- Chleq, Lindqvist, Qiwen

/* Add a COUNT() to your results (the query above) to find the number
 of employees with the same last name.*/
 select distinct last_name, count(*)
 from employees
 where last_name like '%q%' and last_name not like '%qu%'
 group by last_name;
 -- 189, 190, 168
 
 /* Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. 
 Use COUNT(*) and GROUP BY to find the number of employees for each 
 gender with those names.*/
 select first_name, gender, count(*)
 from employees
 where first_name in ('Irena','Vidya','Maya')
 group by first_name, gender;
 
 
 /* Using your query that generates a username for all of the employees,
 generate a count employees for each unique username.*/
 select DISTINCT lower (concat(substr(first_name, 1, 1), substr(last_name, 1, 4),'_'
 , substr(birth_date, 6, 2), substr(birth_date, 3, 2))) as username, count(*)
 from employees
 group by username;
 -- order by count(*);
 
 /* From your previous query, are there any duplicate usernames? 
 What is the higest number of times a username shows up? 
 Bonus: How many duplicate usernames are there from your previous query? */
 select DISTINCT lower (concat(substr(first_name, 1, 1), substr(last_name, 1, 4),'_'
 , substr(birth_date, 6, 2), substr(birth_date, 3, 2))) as username, count(*)
 from employees
 group by username
 having count(*) >1
 order by count(*) DESC;

 


