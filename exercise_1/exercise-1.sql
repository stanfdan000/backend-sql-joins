-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to citys

select address.address_id
from address
INNER JOIN city

on address.city_id = city.city_id

WHERE city = 'Dundee'