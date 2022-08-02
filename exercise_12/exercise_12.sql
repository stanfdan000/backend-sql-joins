-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT SUM (payment.amount), city.city
FROM city
LEFT JOIN address ON city.city_id = address.city_id
LEFT JOIN customer ON address.address_id = customer.address_id
LEFT JOIN payment ON customer.customer_id = payment.customer_id

WHERE amount IS NOT NULL 
GROUP BY city.city
ORDER BY sum (payment.amount) DESC
LIMIT 10 