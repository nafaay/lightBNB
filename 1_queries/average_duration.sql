-- Get the average duration of all reservations
SELECT SUM(end_date - start_date)/COUNT(*) AS average_duration 
FROM reservations;