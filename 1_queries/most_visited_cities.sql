-- Get a list of the most visited cities
SELECT properties.city, SUM(end_date - start_date) AS total_reservations 
FROM reservations
JOIN properties
ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;
