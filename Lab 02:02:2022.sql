use sakila;
# 1. Using the rental table, find out how many rentals were processed by each employee.
select staff_id,  count(rental_id) as rentals from rental group by staff_id;
# 2. Using the film table, find out how many films were released.
select count(film_id) from film;
# 3. Using the film table, find out how many films there are of each rating. Sort the results in descending order of the number of films.
select rating, count(film_id) from film group by rating order by count(film_id) desc;
# 4. Which kind of movies (rating) have a mean duration of more than two hours?
select rating, count(film_id) from film group by rating having avg(length)>120 order by count(film_id) desc 