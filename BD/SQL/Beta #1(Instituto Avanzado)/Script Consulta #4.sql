SELECT*FROM instituto.alumno WHERE id=1;
SELECT*FROM instituto.alumno WHERE teléfono=692735409;
SELECT*FROM instituto.alumno WHERE es_repetidor LIKE 'si';
SELECT*FROM instituto.alumno WHERE es_repetidor LIKE 'no';
SELECT*FROM instituto.alumno WHERE fecha_nacimiento <= '1993/01/01';
SELECT*FROM instituto.alumno WHERE fecha_nacimiento >= '1994/01/01';
SELECT*FROM instituto.alumno WHERE fecha_nacimiento >= '1994/01/01' AND es_repetidor LIKE 'no';
SELECT*FROM instituto.alumno WHERE fecha_nacimiento BETWEEN '1998/01/01' AND '1998/12/31';
SELECT*FROM instituto.alumno WHERE fecha_nacimiento NOT BETWEEN '1998/12/31' AND '1998/01/01';