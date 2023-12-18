--1.How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
--two

--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(payment_id)
FROM payment
WHERE amount BETWEEN '3.99' AND '5.99';
--zero

--3. What film does the store have the most of? (search in inventory)
SELECT COUNT(film_id)
FROM inventory;

SELECT title
FROM film
WHERE film_id = 8

--film 8 Airport Pollock

--4. How many customers have the last name ‘William’?
SELECT MAX(customer_id)
FROM customer
WHERE last_name = 'William'
--None

--5. What store employee (get the id) sold the most rentals?
SELECT MAX(staff_id)
FROM rental;

SELECT first_name
FROM staff
WHERE staff_id = 2
--JON

--6. How many different district names are there?
SELECT count(district)
FROM address
GROUP BY district
--378 districts

7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(film_id)
from film_actor
GROUP BY film_id
Order BY count(film_id) > 0
--Film_id = 1000
SELECT title
FROM film
WHERE film_id = 1000
-- Zorro Ark

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name
from customer
WHERE store_id = '1' 
-- 13 names from store 1 end in 'es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select amount, count(amount)
from payment
WHERE customer_id BETWEEN 380 and 430
group by amount
having count(amount)>250
--three payment amounts

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT rating 
from film
GROUP BY rating

SELECT COUNT(rating)
from film
GROUP BY rating

-- 5 total ratings = NC-17(209), G(178), PG-13(224), PG(194), AND R(196) .  
