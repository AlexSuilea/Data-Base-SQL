SELECT * FROM seats;
SELECT * FROM boarding_passes;

SELECT 
fare_conditions,
COUNT(*)
FROM boarding_passes as bp
INNER JOIN seats as s
ON bp.seat_no = s.seat_no
GROUP BY fare_conditions;