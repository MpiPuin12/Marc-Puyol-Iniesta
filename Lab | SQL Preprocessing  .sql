#Lab | SQL Preprocessing
use sakila;
# 1. Select all the actors with the first name "Scarlett".
select actor_id,first_name, last_name from actor where first_name= "Scarlett";
# 2.How many films (movies) are available for rent and how many films have been rented?
select count(film_id) from film;
select count(distinct i.film_id) from inventory as i;
select count(rental_id) from rental;
# 3.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration from film; 
select min(length) as min_duration from film;
# 4.What's the average movie duration expressed in format (hours, minutes)?
select concat(floor(avg(length)/60),'h:',floor(avg(length)%60),'m') as avg_duration from film;
# 5.How many distinct (different) actors' last names are there?
select count(distinct(last_name)) from actor;
# 6. Since how many days has the company been operating (check DATEDIFF() function)?
select datediff(max(last_update),min(payment_date)) from payment; 
# 7. Show rental info with additional columns month and weekday. Get 20 results.
SELECT * FROM rental;
SELECT *, extract(MONTH FROM rental_date) AS month, CASE WEEKDAY(rental_date)
    WHEN 6 THEN 'SUNDAY'
    WHEN 0 THEN 'MONDAY'
    WHEN 1 THEN 'TUESDAY'
    WHEN 2 THEN 'WEDNESDAY'
    WHEN 3 THEN 'THURSDAY'
    WHEN 4 THEN 'FRIDAY'
    WHEN 5 THEN 'SATURDAY'
    END
AS weekday FROM rental limit 20;
# 8. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT * FROM rental;
SELECT *, extract(MONTH FROM rental_date) AS month, CASE WEEKDAY(rental_date)
    WHEN 6 THEN 'SUNDAY'
    WHEN 0 THEN 'MONDAY'
    WHEN 1 THEN 'TUESDAY'
    WHEN 2 THEN 'WEDNESDAY'
    WHEN 3 THEN 'THURSDAY'
    WHEN 4 THEN 'FRIDAY'
    WHEN 5 THEN 'SATURDAY'
    END AS weekday,
    CASE
    WHEN 5 or 6 THEN 'weekend'
    else 'workday'
    END as day_type
    from rental; 
    #9. How many rentals were in the last month of activity?
    select count(rental_id) from rental where rental_date > ('2006-02-14 15:16:03'-interval 1 month);
 