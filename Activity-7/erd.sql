--display number of unique inventory rented 
SELECT * 
 from rental
	LEFT JOIN inventory ON inventory.inventory_id = rental.inventory_id;
	SELECT COUNT DISTINCT(film_id) from rental

-- and the total number of inventory rented
SELECT count(rental_id) from rental

-- listing all films of Dan Torn and Dan Streep
SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
	FROM film 
	LEFT JOIN film_actor 
		ON film.film_id = film_actor.film_id
	LEFT JOIN actor
		ON film_actor.actor_id = actor.actor_id
		WHERE actor.first_name='Dan' AND (actor.last_name='Torn' OR actor.last_name='Streep')
		ORDER BY film.title

-- listing all comedy films of actors whose name starts with "D"
SELECT film.title, category.name, CONCAT(actor.last_name, ', ', actor.first_name) AS actor_fullname
	FROM film 
	LEFT JOIN film_actor
		ON  film.film_id = film_actor.film_id
	LEFT JOIN actor
		ON film_actor.actor_id = actor.actor_id
	LEFT JOIN film_category
		ON film.film_id = film_category.film_id
	LEFT JOIN category
		ON film_category.category_id = category.category_id
	WHERE category.name = 'Comedy' AND actor.last_name LIKE 'D%'
		ORDER BY actor_fullname