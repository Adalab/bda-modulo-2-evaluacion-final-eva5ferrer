/* ******************************************************************************************
							 EJERCICIO 1 (EVA FERRER)
****************************************************************************************** */

-- *** FASE 3: Inserción de los Datos en la Base de Datos ****

-- He creado la base de datos "peliculas" a través de Python.
USE peliculas;


-- Creo la tabla de géneros:
CREATE TABLE IF NOT EXISTS generos (
  id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(15) NOT NULL);

-- Creo la tabla de peliculas con la clave foranea 'id_genero':
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

-- Quiero ver qué id le da SQL a cada género. Por eso, introduzco los tipos de genero que tenemos (esta información la he sacado de Python. 
INSERT INTO generos (nombre) VALUES
('Crimen'), ('Drama'), ('Acción'), ('Ciencia ficción'), ('Romance'), ('Bélico'), ('Thriller'), ('Musical'),
 ('Fantasía'), ('Aventura'), ('Animación'), ('Biografía'), ('Terror'), ('Suspense'), ('Comedia'), ('Western');

SELECT * FROM generos;