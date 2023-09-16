select * from actor;
select * from address;
select * from category;
select * from city;
select * from customer;
select * from film;
select * from payment;
select * from rental;
select * from store;

select first_name, last_name, email
from customer;

select first_name, last_name, email 
from customer
order by last_name desc, first_name desc;

select distinct amount
from payment
order by amount desc;

select distinct district
from address;

select rental_date
from rental 
order by rental_date desc
limit 1;

select count(*)
from film;

select count(distinct last_name)
from customer;