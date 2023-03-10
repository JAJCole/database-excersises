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
-- show creation syntax:   show create databse *name*;         show create table *name*;
-- see what current database is selected:         select database;
-- specify what db to use:     use *name*;
-- SELECT (which colums to use)  -- FROM (which table to use)   -- WHERE (how to filter)
example: Show categories for only supergroup one and rename: STEPS BELOW:
1. write query and run (SELECT * FROM *name*)
2. use WHERE to filter
3. use SELECT again and enter in the columns that you want
# reminder to rename use SELECT *name* as *new name* from *name* where *category* = '*query*'
# 