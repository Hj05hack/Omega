USE liga;
-- a) Selecciona todos los jugadores del equipo Gran Canaria 
SELECT*
FROM jugadores
WHERE jugadores.equipo= 
	(SELECT equipos.id_equipo FROM equipos WHERE equipos.nombre LIKE 'Gran Canaria');

-- b) Selecciona todos los jugadores de aquellos equipos que tengan entre 10 y 22 puntos (Inclusive)
SELECT *
FROM jugadores	
WHERE jugadores.equipo IN 
	(SELECT equipos.id_equipo FROM equipos WHERE equipos.puntos BETWEEN  10 AND 22);

-- c) Selecciona los nombres equipos que participaron el el último partido registrado.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo =
			(SELECT partidos.evisitante FROM partidos WHERE partidos.fecha = 
				(SELECT max(partidos.fecha) FROM partidos))
OR equipos.id_equipo =
			(SELECT partidos.elocal FROM partidos WHERE partidos.fecha = 
				(SELECT max(partidos.fecha) FROM partidos));
            
-- d) Selecciona los jugadores que participaron en todos los partidos arbitrados por el árbitro 6
SELECT jugadores.*
FROM jugadores
WHERE jugadores.equipo IN 
	(SELECT partidos.elocal FROM partidos WHERE partidos.arbitro = 6)
OR jugadores.equipo IN 
	(SELECT partidos.evisitante FROM partidos WHERE partidos.arbitro = 6);
    
-- e) Selecciona todos los jugadores de aquellos equipos que hayan jugado como visitantes en noviembre de 2011
SELECT jugadores.*
FROM jugadores
WHERE jugadores.equipo IN
	(SELECT partidos.evisitante 
     FROM partidos 
     WHERE partidos.fecha 
     BETWEEN '2001-11-01' AND '2011-11-30');
     
-- f) Selecciona el nombre de todos los equipos que hayan jugado como visitantes menos de dos veces.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN 
	(SELECT partidos.evisitante 
     FROM partidos 
     GROUP BY 1 
     HAVING count(partidos.evisitante)<2);
     
-- g) Selecciona el nombre de todos los equipos que tengan, al menos, un ala-pívot.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN 
	(SELECT jugadores.equipo 
     FROM jugadores 
     WHERE jugadores.puesto 
     LIKE 'Ala-pivot');
     
-- h) Selecciona el nombre de todos los equipos que tengan jugadores cuyo nombre empiece por F.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT jugadores.equipo
	 FROM jugadores
     WHERE jugadores.nombre LIKE 'F%');
     
-- i) Haciendo uso de la función Substring de MySQL selecciona el nombre de todos los equipos que hayan ganado, al menos, un partido.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT partidos.elocal
	 FROM partidos
     WHERE substring_index(partidos.resultado,'-',1) > substring_index(partidos.resultado,'-',-1))
OR equipos.id_equipo IN
	(SELECT partidos.evisitante
	 FROM partidos
     WHERE substring_index(partidos.resultado,'-',1) < substring_index(partidos.resultado,'-',-1));
     
-- j) Selecciona el nombre de todos los equipos que cuenten con jugadores de más de 2 metros.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT jugadores.equipo 
	 FROM jugadores
     WHERE jugadores.altura >2);
     
-- k) Selecciona el nombre de todos los equipos que tengan, al menos, un jugador cuyo salario supere los 100000
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT jugadores.equipo
     FROM jugadores
     WHERE jugadores.salario >100000);
     
-- l) Selecciona el nombre y apellido del jugador más alto.
SELECT jugadores.nombre,jugadores.apellido
FROM jugadores
WHERE jugadores.altura =
	(SELECT max(jugadores.altura) 
		FROM jugadores);
        
-- m) Selecciona el nombre y apellido del jugador más bajo del equipo CAI Zaragoza.
SELECT jugadores.nombre, jugadores.apellido
FROM jugadores
WHERE jugadores.equipo =
	(SELECT equipos.id_equipo
     FROM equipos
	 WHERE equipos.nombre LIKE 'CAI Zaragoza')
ORDER BY jugadores.altura LIMIT 1;

-- n) Selecciona los partidos jugados por los equipos cuyo nombre empiece por R.
SELECT partidos.*
FROM partidos
WHERE partidos.evisitante IN 
	(SELECT equipos.id_equipo 
     FROM equipos
     WHERE equipos.nombre LIKE 'R%')
OR partidos.elocal IN 
	(SELECT equipos.id_equipo 
     FROM equipos
     WHERE equipos.nombre LIKE 'R%');
     
-- o) Selecciona el nombre y apellido de todos los jugadores cuyo salario se encuentre por encima de la media del salario de todos los jugadores. 
SELECT jugadores.nombre , jugadores.apellido
FROM jugadores
WHERE jugadores.salario >
	(SELECT avg(jugadores.salario)
     FROM jugadores);
     
-- p) Selecciona el nombre y apellidos de todos los jugadores cuyo salario esté por encima de la media de salario de los jugadores del CAI Zaragoza.
SELECT jugadores.nombre,jugadores.apellido
FROM jugadores
WHERE jugadores.salario >
	(SELECT avg(jugadores.salario)
     FROM jugadores
     WHERE jugadores.equipo=
		(SELECT equipos.id_equipo
         FROM equipos
         WHERE equipos.nombre LIKE 'CAI Zaragoza'));
         
-- q) Selecciona el nombre y apellido de todos los jugadores que hayan jugado partidos en 2011 jugando como visitantes y cuya estatura se encuentre por encima de la media de la estatura de todos los jugadores.
SELECT jugadores.nombre,jugadores.apellido
FROM jugadores
WHERE jugadores.equipo IN
	(SELECT equipos.id_equipo
     FROM equipos
     WHERE equipos.id_equipo IN
		(SELECT partidos.evisitante
         FROM partidos
         WHERE YEAR(partidos.fecha) =2011))
AND jugadores.altura >
	(SELECT avg(jugadores.altura)
     FROM jugadores);
     
-- r) Selecciona el número de partidos que ha jugado el equipo 4 como visitante.
SELECT count(partidos.evisitante)
FROM partidos
WHERE partidos.evisitante =
	(SELECT equipos.id_equipo
     FROM equipos
     WHERE equipos.id_equipo =4);
     
-- s) Selecciona el nombre de aquellos equipos que tengan menos puntos que la media de puntos de todos los equipos.
SELECT equipos.nombre
FROM equipos
WHERE equipos.puntos <
	(SELECT avg(equipos.puntos)
     FROM equipos);
     
-- t)Selecciona el nombre de todos los jugadores que han participado en más de 2 partidos en el año 2012.
SELECT jugadores.nombre, jugadores.equipo
FROM jugadores
WHERE jugadores.equipo IN
	(SELECT equipos.id_equipo
     FROM equipos
     WHERE 2<
		(SELECT count(partidos.evisitante)
         FROM partidos
         WHERE YEAR(partidos.fecha) = 2012));
-- u) Selecciona el nombre de todos los equipos en los que todos sus jugadores cobren menos de  100000
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT jugadores.equipo
     FROM jugadores
     WHERE jugadores.salario <100000);
     
-- v) Selecciona el nombre y apellidos de todos los jugadores que cobren más que cualquiera de los jugadores del CAI Zaragoza.
SELECT jugadores.nombre, jugadores.apellido
FROM jugadores
WHERE jugadores.salario >
	(SELECT max(jugadores.salario) 
     FROM jugadores 
     WHERE jugadores.equipo =
		(SELECT equipos.id_equipo
         FROM equipos
         WHERE equipos.nombre LIKE 'CAI Zaragoza'));
	
-- w) Selecciona el nombre y apellidos de todos los jugadores de los equipos que tengan más de 10 puntos que cobren un salario por encima de la media del salario de los jugadores de los equipos que tengan menos de 15 puntos.
SELECT jugadores.nombre, jugadores.apellido 
FROM jugadores
WHERE jugadores.equipo IN
	(SELECT equipos.id_equipo
     FROM equipos
     WHERE equipos.puntos >10)
AND jugadores.salario >
	(SELECT avg(jugadores.salario)
     FROM jugadores
     WHERE jugadores.equipo IN
		(SELECT equipos.id_equipo
         FROM equipos
         WHERE equipos.puntos <15));
         
-- x) Selecciona todos los jugadores que pertenezcan a equipos cuya ciudad empiece por V.
SELECT jugadores.*
FROM jugadores
WHERE jugadores.equipo IN
	(SELECT equipos.id_equipo 
     FROM equipos
     WHERE equipos.ciudad LIKE 'V%');
     
-- y) Selecciona el nombre de todos los jugadores que jueguen como Base y cobren más que cualquiera de los jugadores del P.E. Valencia.
SELECT jugadores.nombre
FROM jugadores 
WHERE jugadores.puesto LIKE 'Base'
AND jugadores.salario >
	(SELECT max(jugadores.salario)
     FROM jugadores
     WHERE jugadores.nombre LIKE 'P.E. Valencia');
     
-- z) Selecciona el nombre de todos los equipos que tengan jugadores que cobren un salario por encima de 10000 y hayan jugado partidos como visitantes en noviembre de 2011.
SELECT equipos.nombre
FROM equipos
WHERE equipos.id_equipo IN
	(SELECT jugadores.equipo
     FROM jugadores
     WHERE jugadores.salario>10000
     AND equipos.id_equipo IN
		(SELECT partidos.evisitante
         FROM partidos
         WHERE YEAR(partidos.fecha) = 2011 AND MONTH(partidos.fecha) = 11));