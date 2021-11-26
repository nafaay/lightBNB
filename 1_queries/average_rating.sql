-- Show all details about properties located in Vancouver including their average rating.
SELECT properties.*, AVG(property_reviews.rating) AS average_rating
FROM properties 
JOIN property_reviews 
ON properties.id = property_id
WHERE city = 'Vancouver'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4 LIMIT 10;

