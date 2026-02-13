/* ******************************************************************************************
							 EJERCICIO 1 (EVA FERRER)
****************************************************************************************** */
-- ... CONTINUACIÓN FASE 2  

-- ********** FASE 2B: CREACIÓN BASE DE DATOS (CREACIÓN DE LAS TABLAS) ************

-- Uso el esquema 'peliculas' previamente creado con Python (Fase 2A) en el archivo jupyter: 'ejercicio-1-1-python-API.ipynb'.
USE peliculas;

-- Creo la tabla de 'generos':
CREATE TABLE IF NOT EXISTS generos (
  id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(15) NOT NULL);

-- Creo la tabla de 'peliculas' con la clave foranea 'id_genero':
CREATE TABLE IF NOT EXISTS peliculas (
  id_pelicula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(50) NOT NULL,
  año INT NOT NULL,
  duracion INT NOT NULL,
  adultos BOOLEAN NOT NULL,
  id_genero INT NOT NULL,
  CONSTRAINT fk_peliculas_generos
    FOREIGN KEY (id_genero)
    REFERENCES generos (id_genero)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- ************ FASE 3: INSERCIÓN DE DATOS EN LA BASE DE DATOS: ************  

-- Inserto los géneros en la tabla "generos": 
	-- Introduzco los tipos de genero que he sacado de Python anteriormente en la Fase 2A.  
INSERT INTO generos (nombre) VALUES
('Crimen'), ('Drama'), ('Acción'), ('Ciencia ficción'), ('Romance'), ('Bélico'), ('Thriller'), ('Musical'),
 ('Fantasía'), ('Aventura'), ('Animación'), ('Biografía'), ('Terror'), ('Suspense'), ('Comedia'), ('Western');

SELECT * FROM generos; -- Compruebo que se ha creado correctamente y con los ids correctos.

-- Inserto los datos de las películas en la tabla "peliculas": 
	-- Introduzco los valores sacado de Python (Fase 2A) de las columnas: titulo, año, duracion, adultos e id_genero. 

INSERT INTO peliculas (titulo, año, duracion, adultos, id_genero) VALUES 
('The Godfather', 1972, 175, False, 1),
 ('The Godfather Part II', 1974, 202, False, 1),
 ('Pulp Fiction', 1994, 154, True, 1),
 ('Forrest Gump', 1994, 142, False, 2),
 ('The Dark Knight', 2008, 152, False, 3),
 ('Fight Club', 1999, 139, True, 2),
 ('Inception', 2010, 148, False, 4),
 ('The Matrix', 1999, 136, False, 4),
 ('The Shawshank Redemption', 1994, 142, False, 2),
 ('Interstellar', 2014, 169, False, 4),
 ('Gladiator', 2000, 155, False, 3),
 ('Titanic', 1997, 195, False, 5),
 ('Avatar', 2009, 162, False, 4),
 ('Saving Private Ryan', 1998, 169, True, 6),
 ('The Silence of the Lambs', 1991, 118, True, 7),
 ('Se7en', 1995, 127, True, 7),
 ('Goodfellas', 1990, 146, True, 1),
 ('The Departed', 2006, 151, True, 1),
 ('Whiplash', 2014, 106, False, 2),
 ('La La Land', 2016, 128, False, 8),
 ('The Lord of the Rings: The Fellowship of the Ring', 2001, 178, False, 9),
 ('The Lord of the Rings: The Two Towers', 2002, 179, False, 9),
 ('The Lord of the Rings: The Return of the King', 2003, 201, False, 9),
 ('Star Wars: A New Hope', 1977, 121, False, 4),
 ('Star Wars: The Empire Strikes Back', 1980, 124, False, 4),
 ('Star Wars: Return of the Jedi', 1983, 131, False, 4),
 ('Back to the Future', 1985, 116, False, 10),
 ('Jurassic Park', 1993, 127, False, 10),
 ('The Lion King', 1994, 88, False, 11),
 ('Toy Story', 1995, 81, False, 11),
 ('Finding Nemo', 2003, 100, False, 11),
 ('Shrek', 2001, 90, False, 11),
 ('The Incredibles', 2004, 115, False, 11),
 ('WALL·E', 2008, 98, False, 11),
 ('Up', 2009, 96, False, 11),
 ('Spirited Away', 2001, 125, False, 11),
 ('Princess Mononoke', 1997, 134, True, 11),
 ('The Green Mile', 1999, 189, True, 2),
 ('The Truman Show', 1998, 103, False, 2),
 ('The Social Network', 2010, 120, False, 2),
 ('Joker', 2019, 122, True, 2),
 ('Black Panther', 2018, 134, False, 3),
 ('Iron Man', 2008, 126, False, 3),
 ('The Avengers', 2012, 143, False, 3),
 ('Avengers: Endgame', 2019, 181, False, 3),
 ('Dune', 2021, 155, False, 4),
 ('Mad Max: Fury Road', 2015, 120, True, 3),
 ('The Revenant', 2015, 156, True, 10),
 ('Parasite', 2019, 132, True, 7),
 ('Oldboy', 2003, 120, True, 7),
 ('The Pianist', 2002, 150, True, 2),
 ('The Wolf of Wall Street', 2013, 180, True, 12),
 ('Her', 2013, 126, False, 2),
 ('Gravity', 2013, 91, False, 4),
 ('The Shape of Water', 2017, 123, True, 9),
 ('Get Out', 2017, 104, True, 13),
 ('It', 2017, 135, True, 13),
 ('The Conjuring', 2013, 112, True, 13),
 ('A Quiet Place', 2018, 90, False, 13),
 ('The Exorcist', 1973, 122, True, 13),
 ('The Shining', 1980, 144, True, 13),
 ('Blade Runner', 1982, 117, True, 4),
 ('Blade Runner 2049', 2017, 164, True, 4),
 ('Alien', 1979, 117, True, 4),
 ('Aliens', 1986, 137, True, 4),
 ('The Terminator', 1984, 107, True, 3),
 ('Terminator 2: Judgment Day', 1991, 137, False, 3),
 ('Rocky', 1976, 120, False, 2),
 ('Raging Bull', 1980, 129, True, 12),
 ('Taxi Driver', 1976, 113, True, 2),
 ('Casablanca', 1942, 102, False, 5),
 ('Citizen Kane', 1941, 119, False, 2),
 ('Psycho', 1960, 109, True, 13),
 ('Vertigo', 1958, 128, False, 14),
 ('Rear Window', 1954, 112, False, 14),
 ('12 Angry Men', 1957, 96, False, 2),
 ("Schindler's List", 1993, 195, True, 2),
 ('American Beauty', 1999, 122, True, 2),
 ('No Country for Old Men', 2007, 122, True, 1),
 ('The Big Lebowski', 1998, 117, True, 15),
 ('Amélie', 2001, 122, False, 5),
 ('The Intouchables', 2011, 112, False, 2),
 ('City of God', 2002, 130, True, 1),
 ("Pan's Labyrinth", 2006, 118, True, 9),
 ('Roma', 2018, 135, True, 2),
 ('Slumdog Millionaire', 2008, 120, False, 2),
 ('Million Dollar Baby', 2004, 132, True, 2),
 ("The King's Speech", 2010, 118, False, 12),
 ('Argo', 2012, 120, False, 7),
 ('Moonlight', 2016, 111, True, 2),
 ('Manchester by the Sea', 2016, 137, True, 2),
 ('Birdman', 2014, 119, True, 2),
 ('Django Unchained', 2012, 165, True, 16),
 ('Inglourious Basterds', 2009, 153, True, 6),
 ('The Hateful Eight', 2015, 168, True, 16),
 ('La vita è bella', 1997, 116, False, 2),
 ('Requiem for a Dream', 2000, 102, True, 2),
 ('Memento', 2000, 113, True, 7),
 ('Eternal Sunshine of the Spotless Mind', 2004, 108, False, 2),
 ('Donnie Darko', 2001, 113, True, 2);
 
 SELECT * FROM peliculas; -- Compruebo que se ha creado correctamente.
 
-- ************ FASE 4: OBTENER INFORMACIÓN A PARTIR DE LOS DATOS ************

-- 4.1 ¿Cuántas películas tienen una duración superior a 120 minutos?
SELECT COUNT(id_pelicula) AS N_peliculas_superior_120_minutos
FROM peliculas
WHERE duracion > 120; -- Aqui no hace falta el group by porque solo tenemos una columna en el select.

-- 4.2 ¿Cuántas películas incluyen subtítulos en español? 
	/* Esta pregunta no la puedo hacer porque quité los subtítulos al extraer la info de la API, 
    tal y como decía el anunciado. */

-- 4.3 ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(id_pelicula) AS N_peliculas_adultos
FROM peliculas
WHERE adultos = true;

	-- Sería lo mismo que poner:
    SELECT COUNT(id_pelicula) AS N_peliculas_adultos
	FROM peliculas
	WHERE adultos = 1;

-- 4.4 ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo, año -- pongo el año para también tener esta info en el resultado
FROM peliculas
ORDER BY año
LIMIT 1;

	-- Se puede hacer con subconsulta:
    SELECT titulo, año
    FROM peliculas
    WHERE año = (SELECT MIN(año) FROM peliculas);

-- 4.5 Muestra el promedio de duración de las películas agrupado por género.
-- Hago una subconsulta dentro del select para que me salgan los nombres de los géneros.
SELECT (SELECT nombre FROM generos AS g WHERE g.id_genero = p.id_genero) AS nombre_genero, ROUND(AVG(duracion),2) AS promedio_duracion
FROM peliculas AS p
GROUP BY id_genero;

	-- Tambien puedo usar un inner join: 
	SELECT g.nombre AS nombre_genero, ROUND(AVG(duracion),2) AS promedio_duracion
    FROM generos AS g
    INNER JOIN peliculas AS p
    USING (id_genero)
    GROUP BY id_genero;

-- 4.6 ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT año, COUNT(id_pelicula) AS N_peliculas
FROM peliculas
GROUP BY año
ORDER BY COUNT(año) DESC;

-- 4.7 ¿Cuál es el año con más películas en la base de datos?
SELECT año, COUNT(id_pelicula) AS N_peliculas
FROM peliculas
GROUP BY año
ORDER BY COUNT(año) DESC
LIMIT 1;

-- 4.8 Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
-- Lo mismo que en 4.5, tengo que hacer una subconsulta en el SELECT para poder mostrar los nombres de los géneros.
SELECT (SELECT nombre FROM generos AS g WHERE g.id_genero = p.id_genero) AS nombre_genero, COUNT(id_pelicula) AS N_peliculas
FROM peliculas AS p
GROUP BY id_genero
ORDER BY N_peliculas DESC;

	-- Opcion con left join por ejemplo (aunque el resultado sería el mismo con un inner join):
    SELECT g.nombre AS nombre_genero, COUNT(id_pelicula) AS N_peliculas
	FROM generos AS g
    LEFT JOIN peliculas AS p
    USING (id_genero)
    GROUP BY id_genero
    ORDER BY N_peliculas DESC;
    
	-- 4.9 Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra).
SELECT titulo 
FROM peliculas
WHERE titulo LIKE '%Godfather%';

	-- Con otra palabra, por ejemplo: "Star Wars":
    SELECT titulo 
FROM peliculas
WHERE titulo LIKE '%star wars%';

