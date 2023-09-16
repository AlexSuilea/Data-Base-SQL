SELECT * FROM customer;
SELECT payment_id,
payment.customer_id,
amount,
first_name,
last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;