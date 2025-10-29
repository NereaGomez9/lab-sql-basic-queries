SHOW TABLES;

SELECT * 
FROM actor;

SELECT * 
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT * 
FROM language;

SELECT name
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(*) AS num_stores
FROM store;

SELECT COUNT(*) AS num_employees
FROM staff;


SELECT COUNT(*) AS available_films
FROM film
WHERE film_id NOT IN (SELECT film_id FROM rental);


SELECT COUNT(*) AS rented_films
FROM rental;

SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
