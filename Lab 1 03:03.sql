use sakila;
select s.store_id, ci.city, co.country
from store s 
join address a using(address_id)
join city ci using(city_id)
join country co using(country_id); 

# Write a query to display how much benefit amount, in dollars, each store brought in.


SELECT s.store_id, SUM(p.amount)
FROM store s
INNER JOIN staff
ON s.store_id = staff.store_id
INNER JOIN payment p 
ON p.staff_id = staff.staff_id
GROUP BY s.store_id
ORDER BY SUM(amount);

# What is the average running time of films by category?

select c.name, avg(f.length)
from film as f join film_category using (film_id) 
join category c using (category_id)
group by c.name
order by avg(length) desc;

# Which film categories are longest on average?

select c.name, avg(f.length)
from film as f join film_category using (film_id) 
join category c using (category_id)
group by c.name
order by avg(length) desc;

# Display the most frequently rented movies in descending order.
SELECT title, COUNT(f.film_id) AS times_rented
FROM  film f
JOIN inventory i using (film_id)
JOIN rental r using (inventory_id)
GROUP BY title ORDER BY times_rented DESC;




