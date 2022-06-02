/*
Get details about a single user.
Use tristanjacobs@gmail.com for now.
*/
SELECT id, name, email, password
FROM users
WHERE email = 'tristanjacobs@gmail.com';

/*
Get the average duration of all reservations.
*/
SELECT avg(end_date - start_date) as average_duration
FROM reservations;

/*
Show specific details about properties located in Vancouver including their average rating.
Select the id, title, cost_per_night, and an average_rating from the properties table for properties located in Vancouver.
Order the results from lowest cost_per_night to highest cost_per_night.
Limit the number of results to 10.
Only show listings that have a rating >= 4 stars.
*/
SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%Vancouver%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;

/*
Get a list of the most visited cities.
*/
SELECT properties.city as name, count(reservations) as number_of_visits
FROM properties
JOIN reservations ON reservations.property_id = properties.id
GROUP BY properties.city
ORDER BY number_of_visits DESC;

/*
Show all reservations for a user.
User ID = 300
*/
SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 300
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
