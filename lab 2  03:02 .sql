# 1. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT f.title, COUNT(inventory_id) FROM film f
JOIN inventory i 
ON f.film_id = i.film_id
WHERE title = "Hunchback Impossible";

# 2. List all films whose length is longer than the average of all the films.

select title, length from film where length>(
select avg(length) from film );

# 3. Use subqueries to display all actors who appear in the film Alone Trip.

select a.First_name, a.Last_name , actor_id  
from actor as a 
join film_actor as f using 
(actor_id) join film using (film_id) where title= (
select title from film where title='Alone Trip');

# 4.Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
# Identify all movies categorized as family films.

select title from film join film_category as fc using (film_id) join category as c using (category_id) where c.name=
(select name from category where name= 'family'); 

# 5. Get name and email from customers from Canada using subqueries. 
# Do the same with joins. 
# Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, 
# that will help you get the relevant information.

select cu.first_name, cu.last_name, cu.email,c.country 
from country as c 
join city using (country_id) 
join address using (city_id) 
join customer as cu using (address_id) 
where c.country= (select country from country where country='canada');

# 6. Which are films starred by the most prolific actor? 
# Most prolific actor is defined as the actor that has acted in the most number of films. 
# First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.

SELECT title, CONCAT(first_name, " ", last_name) as Actor_name
FROM film join film_actor using (film_id) JOIN actor USING (actor_id) where actor_id=(
select actor_id from film_actor GROUP BY actor_id ORDER BY count(film_id) DESC LIMIT 1);

# 7. Films rented by most profitable customer. 
# You can use the customer table and payment table to find the most profitable customer 
# ie the customer that has made the largest sum of payments

SELECT CONCAT(first_name, " ", last_name) as Customer_name 
, f.film_id, f.title as films 
FROM customer
join payment using (customer_id) 
join rental using(customer_id)
join inventory using(inventory_id) 
join film as f using (film_id) where customer_id=(
select customer_id from payment GROUP BY customer_id ORDER BY sum(amount) DESC LIMIT 1);

# 8. Get the client_id and the total_amount_spent of those clients
# who spent more than the average of the total_amount spent by each client.


SELECT customer_id, sum(amount)
 from payment group by customer_id having sum(amount)>(
select avg(amount) from payment) ;
