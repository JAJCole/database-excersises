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
