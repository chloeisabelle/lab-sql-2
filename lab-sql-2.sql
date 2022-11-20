
-- 1. Select all the actors with the first name ‘Scarlett’.--
select * from actor
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.--
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? --
Select count(inventory_id)
from inventory;

-- 4. How many films have been rented? -- 
select distinct count(inventory_id)
from rental;


-- 5. What is the shortest and longest rental period?
select min(rental_duration)
from film;

select max(rental_duration)
from film;

-- 6. What are the shortest and longest movie duration? -- 

select max(length) as 'max_duration' from film;

select min(length) as 'min_duration' from film;


-- 7. What's the average movie duration? --
select avg(length) from film;

-- 8. ** Help needed for this one ** What's the average movie duration expressed in format (hours, minutes)? --  Don't really understand how to best do this one -- 
select avg(length)/60 from film;

-- 9. How many movies longer than 3 hours? -- 

select length from film
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org. -- 

SELECT Concat(first_name, '.', last_name,'@sakilacustomer.org') As customer_email From customer;

-- 11. What's the length of the longest film title? -- 

select title, max(length)
from film;


