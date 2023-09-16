SELECT 
LOWER(first_name) AS first_name,
LOWER(last_name) AS last_name,
LOWER(email) as email
FROM customer
WHERE LENGTH(first_name) > 10
OR LENGTH(last_name) > 10;

SELECT 
LOWER(RIGHT(email,5)) as text1,
LOWER(LEFT(RIGHT(email,4),1)) as point1
FROM customer;

SELECT
LOWER(LEFT(email,1) || '***' || RIGHT(email,19)) as anonymized_email
FROM customer;

SELECT 
last_name || ', ' || LEFT(email, POSITION('.' IN email) - 1)
FROM customer;

SELECT 
LEFT(email,1) || '***' ||
SUBSTRING(email FROM POSITION('.' IN email) FOR 2) || '***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer;

SELECT
'***' ||
SUBSTRING(email FROM POSITION('.' IN email) - 1 FOR 3) || '***' ||
SUBSTRING(email FROM POSITION('@' IN email))
FROM customer;

select * from payment;

SELECT 
EXTRACT(month from payment_date) as month,
SUM(amount) as total
FROM payment
GROUP BY month
ORDER BY total DESC;

SELECT 
EXTRACT(dow from payment_date) as day_of_week,
SUM(amount) as total
FROM payment
GROUP BY day_of_week
ORDER BY total DESC;

SELECT 
EXTRACT(week from payment_date) as week,
customer_id,
SUM(amount) as total
FROM payment
GROUP BY week, customer_id
ORDER BY total DESC;

SELECT
SUM(amount) as total,
TO_CHAR(payment_date, 'Dy ,dd/MM/YYYY') as day
FROM payment
GROUP BY day
ORDER BY total DESC;

SELECT
SUM(amount) as total,
TO_CHAR(payment_date, 'Mon, YYYY') as mon_year
FROM payment
GROUP BY mon_year
ORDER BY total DESC;

SELECT
SUM(amount) as total,
TO_CHAR(payment_date, 'Dy, HH:MI') as day_time
FROM payment
GROUP BY day_time
ORDER BY total DESC;

SELECT customer_id,
return_date-rental_date as rental_duration
FROM rental
WHERE customer_id = 35;

SELECT customer_id,
AVG(return_date-rental_date) as rental_duration
FROM rental
GROUP BY customer_id
ORDER BY rental_duration DESC;