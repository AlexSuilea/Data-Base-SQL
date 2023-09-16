select count(*)
from payment
where payment_date between '2020-01-26' and '2020-01-28'
and amount between 1.99 and 3.99;

select * 
from payment
where customer_id in (12,25,67,93,124,234)
and amount in (4.99,7.99,9.99)
and payment_date between '2020-01-01' and '2020-01-31 23:59:59';

select count(*)
from film
where description LIKE '%Documentary%';

select count(*)
from customer
where (last_name like '%X'
OR last_name like '%Y')
and first_name like '___';

--1
select count(*) as number_of_movies
from film
where description like '%Saga%'
and (title like 'A%'
or title like '%R');

--2
select *
from customer
where first_name like '%ER%'
and first_name like '_A%'
order by last_name desc;

--3
select count(*) 
from payment
where (amount = 0
or amount between 3.99 and 7.99)
and payment_date between '2020-05-01' and '2020-05-01 23:59:59' ;