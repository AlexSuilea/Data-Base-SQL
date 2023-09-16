select 
min(replacement_cost), 
max(replacement_cost), 
round(avg(replacement_cost),2) as average, 
sum(replacement_cost)
from film;

select 
staff_id,
sum(amount),
count(*)
from payment
group by staff_id;

select 
staff_id,
sum(amount),
count(*)
from payment
where amount != 0
group by staff_id;

select DATE(payment_date),
staff_id,
sum(amount),
count(*)
from payment
group by staff_id, date
having count(*) > 400
order by count(*) desc;

select DATE(payment_date),
staff_id,
sum(amount),
count(*)
from payment
where amount != 0
group by staff_id, date
order by sum desc;

select DATE(payment_date),
customer_id,
round(avg(amount),2) as average,
count(*)
from payment
where DATE(payment_date) between '2020-04-28' and '2020-04-30'
group by customer_id, DATE(payment_date)
having count(*) > 1
order by average desc;
