SELECT * FROM flights;

SELECT 
COUNT(*) AS flight,
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT(month from scheduled_departure) <= 5 THEN 'Spring'
WHEN EXTRACT(month from scheduled_departure) <= 8 THEN 'Summer'
ELSE 'Fall'
END as season
FROM flights
GROUP BY season;

SELECT
COUNT(*) AS tickets,
CASE
WHEN total_amount <= 20000 THEN 'low price ticket'
WHEN total_amount <= 150000 THEN 'mid price ticket'
ELSE 'high price ticket'
END AS price_ticket
FROM bookings
GROUP BY price_ticket;

SELECT
flight_no,
CAST(REPLACE(flight_no,'PG','') AS INT)
FROM flights;