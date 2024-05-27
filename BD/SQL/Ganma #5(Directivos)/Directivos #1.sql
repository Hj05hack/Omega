USE ejecutivos;
-- 1. Mostrar el DNI, nombre y apellidos de todos los directores
SELECT DNI,nomapels
FROM directores;

-- 2. Mostrar los datos de los directores que no tienen jefes
SELECT*
FROM directores d1
LEFT JOIN directores d2
ON d1.DNIJefe = d2.DNI
WHERE d2.DNIJefe IS NULL;

-- 3. Mostrar el nombre y apellidos de cada director, junto con la capacidad del despacho en el que se encuentra
SELECT directores.nomapels,despachos.capacidad
FROM directores
JOIN despachos
ON directores.despacho = despachos.numero;

-- 4. Mostrar el número de directores que hay en cada despacho
/* Sin tener en cuenta despachos vacíos */
SELECT count(despachos)
FROM despachos
WHERE numero IS NOT NULL;

/* Teniendo en cuenta despachos vacíos */
SELECT count(depachos)
FROM despachos;

-- 5. Mostrar los datos de los directores cuyos jefes no tienen jefes
SELECT*
FROM directores d1 
LEFT JOIN directores d2
ON d1.DNIJefe = d2.DNI
WHERE d1.DNIJefe IS NULL;

-- 6. Mostrar los nombres y apellidos de los directores junto con los de su jefe
SELECT d1.*,d2.*
FROM directores d1
INNER JOIN directores d2
ON d1.DNIJefe=d2.DNI;
-- 7. Mostrar el número de despachos que están sobreutilizados.
SELECT count(numero)
FROM despachos
WHERE capacidad<
	(SELECT count(despacho)
     FROM directores
     WHERE despacho=numero);
-- 8. Añadir un nuevo director llamado Paco Pérez, DNI 28301700, sin jefe, y situado en el despacho 124
INSERT INTO directores VALUES('28301700','Paco Pérez',null,124);
-- 9. Asignar a todos los empleados apellidados Pérez un nuevo jefe con DNI 74568521
UPDATE directores SET DNIJefe='74568521' WHERE (nomapels LIKE '%Perez%');
-- 10. Despedir a todos los directores, excepto a los que no tienen jefe
DELETE FROM directores WHERE DNIJefe IS NOT NULL;