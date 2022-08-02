-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental
select rental.rental_id
FROM rental
INNER JOIN customer

on rental.customer_id = customer.customer_id

WHERE first_name = 'Patricia'