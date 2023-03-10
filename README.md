# This is the notes within the database-excersises directory. 
#

# Within SQL, rather than the # you will use -- for single line comments. /* *TEXT* */ 
# queries end with ; always
# command + return runs queries within MySQL
# and example of a query is:   show databases;
# a command often used is "use *file*;" also "select database();" use is for activating/switching between databases. to verify, use select. such as select database();
# to look into the selected DB, the command show will be used. "show tables;"
# the cursor will be responsible for selecting within the GUI. 

# Data types within SQL: signed/unsigned integers, floats and doubles (where doubles increase the floats precision by doubling the rounding margin), decimals (of a set length) , boolean in SQL defaults to 0 or 1 aka a tinyint, date time and datetime (temporal information) with the best practice being YYYYMMDD
# Data types within SQL cont. : char (fixed link), varchar (variable length), text (advised for blocks over 255 characters. in general try and avoid >255 characters)
# Every table requires a unique value as a primary key. often numerically ordered (1,2,3,ect) the characters have to be unique, meaning no repeating values. this can be done with the AUTO_INCREMENT command
# 
# SELECT statements can do things such as math (SELECT 2+2) 
# 
# statement recap:
-- show databases and tables:     SHOW databases;     SHOW tables;
-- show creation syntax:   show create database *name*;         show create table *name*;
-- see what current database is selected:         select database;
-- specify what db to use:     use *name*;
-- SELECT (which colums to use)  -- FROM (which table to use)   -- WHERE (how to filter)
example: Show categories for only supergroup one and rename: STEPS BELOW:
1. write query and run (SELECT * FROM *name*)
2. use WHERE to filter
3. use SELECT again and enter in the columns that you want
# reminder to rename use SELECT *name* as *new name* from *name* where *category* = '*query*'
# 
-- FILL NOTES FROM 4 excersises in SQL HERE--
































# SQL Functions
# Typically functions in SQL are used in the SELECT statement
# Note: functions req. parenthesis and dont always require an input. An example is SELECT database();
# The following is the class example for functions, can be ran in SQL
show databases();
use employees;
show tables;
# count function returns the number of rows in a query. format: count(*)
select * from employees;
# below is an edit on the above statement to include the count function
select count(*) from employees;  # the default limit of rows in SQL is adjustable, but this function will give you a listout of the total amount within the database.
# you can also rename the count like:
select count(*) as count from employees;
# to sleuth all first and last name and their count, as an example would be to do the count first, to avoid error
# continuing with examples:
use albums_db:
# min, max and avg with format: MIN(input), MAX(input), ect
select * from albums;
# find the minimum amount of sales
select MIN(sales) from albums;
# to have min/max in same output would be:
select min(sales), max(sales) from albums;
# To rename them would be:
select min(sales) as min_sales, max(sales) as max_sales, avg(sales) as avg_sales, count(*) as count from albums;
# Round is another function of format: ROUND([input], 2) where it rounds the input with the specified decimal place
select ROUND([sales],2) from albums;
# to group these functions, like rounding the avg sales would be:
select ROUND(AVG(sales),2) as avg_sales from albums;

# String functions!
# concat: combines strings/things together with format: CONCAT([value1], [value2]...)
select concat('hello', 'pagel', '!');
# works the same as:
select 'hellopagel!':

# to combine two columns you may use concat
select concat(name, release_date) from albums:
# to clean it up you could add an empty or dashed string like:
select concat(release_date, '--', name) as release_date_album from albums;

# to see other columns in the concatation but not concat them:
select concat(release_date, '--', name) as release_date_album
, sales, artist
from albums;
#
# substr: extracts a portion of an element FORMAT: SUBSTR(string, starting_position, how_many_to_retreive)
select 'hello pagel class!'
# to take a portion of it:
select SUBSTR('hello pagel class!', 7, 5) # count to the places you want to begin, SQL starts at 1 not 0
# the 5 signifies how many characters to take out of the string after the start position, so the output is:
'pagel'
# you can specify a nonexistant amount of character spaces after the string to pull and have no error
# can use negative values in the 'count to place you want to begin' with negative values to make the end character have the starting value of 1 rather than the first
# the last argument of 'how many to retreive' is optional with the default returning the remainder string

# case conversion: FORMAT: UPPER([input]), LOWER([input])
select
    UPPER(artist) as all_caps_artist
    , lower(name) as all_lower_album
    , UPPER(concat(release_date, '---', name)) as date_album
    , sales
    from albums;
# The above is an example of case function and the combination of them
# REPLACE: replaces a piece of a string with another string
# FORMAT: REPLACE(string, removed_item, new_string)
select REPLACE('hello pagel class!', 'pagel', 'PAGEL!!!!')
# remember that replace will replace every occuring instance of the thing to be replaced.
further example:
select name, genre, REPLACE(genre, 'rock', 'ROCK!!')
from albums;
# remember that the replace function is case sensitive
select name, genre, REPLACE(lower(genre), 'rock', 'ROCK!!')
from albums; # this example groups functions to first lowercase all genre titles so that the replace will pick them all up, as replace is case sensitive

# TIME AND DATE FUNCTIONS: descriptive functions
select NOW(); # Gives current time/date (subjective to the database so it might not be correct timezone)
select CURRENT_DATE(); # returns date of today
select CURDATE(); # also the date of today
select curtime(); # current time, subjective timezone to the database
# changing timezone
select CONVERT_TZ(now(), '+00:00', '-6:00');
select year(now()): # which specifies year(), month(), day()

# Casting: changing the data
# FORMAT: select CAST([value] as [datatype])
select 1 + cast('2' as SIGNED); # not neccessary as SQL is smart and can add strings and integers like a boss but the above is a good example if there ever are type errors


# Group By Functions:
# group by slides in email, worth looking at and adding notes HERE:




# Group by, as the name suggests, is useful for grouping like data onto one line. known as an aggregate fx
# happens after where statement
# Can be useful for grouping like data with differing data points. like steak burritos of different price
# Can also be useful for using summary statistics of like items. like the average price of the burritos
# group by aggregate fx example:
use chipotle;
show tables;
select item_name
from orders
where item_name like '%Chicken%'
group by item_name
;

# can also group by multiple variables:
select item_name, quantity #you cannot select a thing you arent grouping by, will throw error
from orders
where item_name like '%chicken%'
group by item_name, quantity
order by item_name
;

# how many chicken bowls have been ordered?
select count(*), item_name
 from orders 
 where item_name = 'Chicken Bowl';

 # for each chicken item, how many times was it ordered?
 select item_name, count(*)
 from orders
 where item_name like '%chicken%'
 group by item_name
 ;
-- the above ONLY works because we are grouping by the item_name, which was selected

# minimum and max amount of chicken items being ordered
select item_name, min(quantity), max(quantity)
from orders
where item_name like '%chicken%'
group by item_name
;

-- The above can be modified to include more functions like
select item_name, min(quantity), max(quantity), round(avg(quantity),1), count(*)
from orders
where item_name like '%chicken%'
group by item_name
;

# HAVING: After group by you may apply further filters
# ex. find all order items that have been ordered oer 100 times
# to answer, first group by item_name, then get count for each item, then filter by counts > 100
select item_name, sum(quantity) as sum_quant
from orders
group by item_name
having sum_quant > 100
order by item_name
limit 5 -- gives top 5 results. not necc for prompt but good for brevity and process speed
;
