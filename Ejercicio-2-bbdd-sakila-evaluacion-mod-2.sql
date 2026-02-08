-- **********************************************************************************************
-- 						EJERCICIO 2. BASE DE DATOS SAKILA (EVA FERRER)
-- **********************************************************************************************

/* Para este ejercicio utilizaremos la bases de datos de Sakila. Es una base de datos de ejemplo 
que simula una tienda de alquiler de películas. Contiene tablas como film (películas), actor (actores), 
customer (clientes), rental (alquileres), category (categorías), entre otras. 
Estas tablas contienen información sobre películas, actores, clientes, alquileres y más, y se utilizan 
para realizar consultas y análisis de datos en el contexto de una tienda de alquiler de películas. */

USE sakila;

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.
SELECT DISTINCT title FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".
SELECT title FROM film
WHERE rating = 'PG-13';

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.
SELECT title, description 
FROM film 
WHERE description LIKE '%amazing%';

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
SELECT title
FROM film
WHERE length > 120;

	-- Sería más ilustrativo el mostrar también la duración de cada pelicula en la consulta:
    SELECT title, length
    FROM film
    WHERE length > 120;

-- 5. Recupera los nombres de todos los actores.
SELECT first_name, last_name
FROM actor;

-- 6.Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%Gibson%';

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT first_name, last_name
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

	-- Estaría bien también mostrar el actor_id de cada actor en la consulta:
    SELECT first_name, last_name, actor_id
	FROM actor
	WHERE actor_id BETWEEN 10 AND 20;

-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
SELECT title, rating
FROM film
WHERE NOT rating IN ('R', 'PG-13');

/* 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación 
junto con el recuento. */
SELECT rating, COUNT(rating) AS recuento_total
FROM film
GROUP BY rating;

/* 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre 
y apellido junto con la cantidad de películas alquiladas. */
SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.customer_id) AS recuento_peliculas_alquiladas
FROM customer AS c
INNER JOIN rental AS r
USING (customer_id)
GROUP BY c.customer_id, c.first_name, c.last_name;

/* 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría
junto con el recuento de alquileres. */

-- En este caso, las columnas puente son category_id, film_id e inventory_id, que nos permiten unir las 4 tablas usando 3 inner joins.
SELECT c.name AS nombre_categoria, COUNT(r.inventory_id) AS recuento_alquileres
FROM category AS c
INNER JOIN film_category AS fc
USING(category_id)
INNER JOIN inventory AS i
USING(film_id)
INNER JOIN rental AS r
USING (inventory_id)
GROUP BY c.name
ORDER BY recuento_alquileres DESC; -- lo ordeno de forma descendente para que se ordene por la categoria más popular.

/* 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y
muestra la clasificación junto con el promedio de duración. */

SELECT rating AS clasificación, AVG(length) AS promedio_duración
FROM film
GROUP BY rating
ORDER BY promedio_duración; -- para que te muestre el promedio ordenado de forma ascendente

	-- Tambien podemos mostrar el promedio de duración con sólo 2 decimales:
	SELECT rating AS clasificación, ROUND(AVG(length), 2) AS promedio_duración
	FROM film
	GROUP BY rating
	ORDER BY promedio_duración;

-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".

-- En este caso tenemos que unir 3 tablas con dos joins usando las columnas puente: actor_id y film_id. 
SELECT a.first_name, a.last_name 
FROM actor AS a
INNER JOIN film_actor AS fa
USING (actor_id)
INNER JOIN film AS f
USING (film_id)
WHERE f.title = 'Indian Love';

	-- Otra forma de hacerlo, sería con subconsulta, aunque es mucho más lioso:
	SELECT a.first_name, a.last_name
	FROM actor AS a 
	WHERE actor_id IN 
		(SELECT actor_id
		FROM film_actor AS fa
		WHERE film_id IN 
			(SELECT film_id
			FROM film AS f
			WHERE f.title = 'Indian Love'));

-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.




-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.










