-- 11.	Lista el código de los fabricantes que tienen productos en la tabla producto.
SELECT codigo_fabricante FROM tienda.producto WHERE codigo_fabricante IS NOT NULL;
-- 12.	Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
SELECT DISTINCT codigo_fabricante FROM tienda.producto;
-- 13.	Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM tienda.fabricante ORDER BY nombre ASC;
-- 14.	Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM tienda.fabricante ORDER BY nombre DESC;
-- 15.	Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre,precio FROM tienda.producto ORDER BY nombre ASC ,precio DESC; 
-- 16.	Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT*FROM tienda.fabricante LIMIT 5 OFFSET 0;
-- 17.	Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT*FROM tienda.fabricante LIMIT 2 OFFSET 4;
-- 18.	Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre,precio FROM tienda.producto ORDER BY precio ASC LIMIT 1 OFFSET 0;
-- 19.	Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
SELECT nombre,precio FROM tienda.producto ORDER BY precio DESC LIMIT 1 OFFSET 0;
-- 20.	Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
SELECT nombre FROM tienda.producto WHERE codigo_fabricante=2;
-- 21.	Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT nombre FROM tienda.producto WHERE precio <=120;
-- 22.	Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
SELECT nombre FROM tienda.producto WHERE precio >=400;
-- 23.	Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
SELECT nombre FROM tienda.producto WHERE NOT precio <400;
-- 24.	Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
SELECT*FROM tienda.producto WHERE precio >=80 AND precio<=300;
-- 25.	Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
SELECT*FROM tienda.producto WHERE precio BETWEEN 60 and 200;
-- 26.	Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.
SELECT*FROM tienda.producto WHERE precio >200 AND codigo_fabricante=6;
-- 27.	Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
SELECT*FROM tienda.producto WHERE codigo_fabricante=1 OR codigo_fabricante=3 OR codigo_fabricante=5;
-- 28.	Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN.
SELECT*FROM tienda.producto WHERE codigo_fabricante IN (1,3,5);
-- 29.	Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.
SELECT nombre,precio,precio*100 AS centimos FROM tienda.producto;
-- 30.	Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
SELECT nombre FROM tienda.fabricante WHERE nombre LIKE 's%';
-- 31.	Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
SELECT nombre FROM tienda.fabricante WHERE nombre LIKE'%e';
-- 32.	Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
SELECT nombre FROM tienda.fabricante WHERE nombre LIKE '%w%';
-- 33.	Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
SELECT nombre FROM tienda.fabricante WHERE nombre LIKE '____';
-- 34.	Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
SELECT nombre FROM tienda.producto WHERE nombre LIKE'%portatil%';
-- 35.	Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
SELECT nombre FROM tienda.producto WHERE nombre LIKE '%monitor%' AND precio<215;
-- 36.	Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT nombre,precio FROM tienda.producto WHERE precio>=180 ORDER BY precio DESC,nombre ASC;