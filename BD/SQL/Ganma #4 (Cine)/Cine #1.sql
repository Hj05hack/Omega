USE cine;
-- 1 Mostrar el nombre de todas las películas
SELECT nombre_pelicula
FROM peliculas;
-- 2. Mostrar las distintas calificaciones de edad que existen 
SELECT DISTINCT calificacionedad
FROM peliculas;
-- 3. Mostrar todas las películas que no han sido calificadas 
SELECT*
FROM peliculas
WHERE calificacionedad IS NULL;
-- 4. Mostrar todas las salas que no proyectan ninguna película 
SELECT*
FROM salas
WHERE pelicula IS NULL;
-- 5. Mostrar la información de todas las salas y, si se proyecta alguna película en la sala, mostrar también la información de la película 
SELECT*
FROM salas 
LEFT JOIN peliculas
ON peliculas.codigo=salas.pelicula;
-- 6. Mostrar la información de todas las películas y, si se proyecta en alguna sala, mostrar también la información de la sala 
SELECT*
FROM salas
RIGHT JOIN peliculas
ON peliculas.codigo=salas.pelicula;
-- 7. Mostrar los nombres de las películas que no se proyectan en ninguna sala 
/* Con JOIN */
SELECT peliculas.nombre_pelicula
FROM peliculas
LEFT JOIN salas
ON peliculas.codigo=salas.pelicula
WHERE salas.pelicula IS NULL;
 /* Con Subconsulta */ 
 SELECT nombre_pelicula
 FROM peliculas
 WHERE peliculas.codigo NOT IN
	(SELECT pelicula
     FROM salas);
-- 8. Añadir una nueva película ‘Uno, Dos, Tres’, para mayores de 7 años
INSERT INTO peliculas  VALUES(1,'Uno,Dos,Tres',7);
-- 9. Hacer constar que todas las películas no calificadas han sido calificadas ‘no recomendables para menores de 13 años’ 
UPDATE peliculas SET calificacionedad=13 WHERE calificacionedad IS NULL;
-- 10. Eliminar todas las salas que proyectan películas recomendadas para todos los públicos
DELETE FROM salas WHERE pelicula =
	(SELECT codigo
     FROM peliculas
     WHERE calificacionedad <=3);