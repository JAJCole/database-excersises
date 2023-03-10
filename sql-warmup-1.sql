-- using the chipotle database,
-- find how many times someone ordered a chicken or veggie bowl
-- with a quantity greater than 1
show databases;
use chipotle;
show tables;
select * from orders
where item_name in ('Chicken Bowl','Veggie Bowl')
and quantity > 1;


