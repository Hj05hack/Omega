-- 1 Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
	SELECT DISTINCT fabricante.nombre,producto.nombre,producto.precio FROM fabricante,producto WHERE producto.codigo_fabricante=fabricante.codigo;
	SELECT DISTINCT fabricante.nombre,producto.nombre,producto.precio FROM fabricante INNER JOIN producto ON fabricante.codigo=producto.codigo_fabricante;
-- 2 Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
	SELECT DISTINCT fabricante.nombre AS 'Nombre_fabricante',producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto' FROM fabricante,producto WHERE producto.codigo_fabricante=fabricante.codigo ORDER BY fabricante.nombre ASC;
	SELECT DISTINCT fabricante.nombre AS 'Nombre_fabricante',producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto' FROM fabricante INNER JOIN producto ON fabricante.codigo=producto.codigo_fabricante ORDER BY fabricante.nombre ASC;
-- 3 Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.
	SELECT DISTINCT producto.codigo AS 'Codigo_producto', producto.nombre AS 'Nombre_producto', fabricante.codigo AS 'Codigo_fabricante', fabricante.nombre AS 'Nombre_fabricante' FROM producto,fabricante WHERE producto.codigo_fabricante=fabricante.codigo;
    SELECT DISTINCT producto.codigo AS 'Codigo_producto', producto.nombre AS 'Nombre_producto', fabricante.codigo AS 'Codigo_fabricante', fabricante.nombre AS 'Nombre_fabricante' FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante;
-- 4 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante' FROM producto,fabricante ORDER BY producto.precio ASC LIMIT 1 OFFSET 0;
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante' FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante ORDER BY producto.precio ASC LIMIT 1 OFFSET 0;
-- 5 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante' FROM producto,fabricante ORDER BY producto.precio DESC LIMIT 1 OFFSET 0;
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante' FROM producto INNER JOIN fabricante ON fabricante.codigo=producto.codigo_fabricante ORDER BY producto.precio DESC LIMIT 1 OFFSET 0;
-- 6 Devuelve una lista de todos los productos del fabricante Lenovo.
	SELECT DISTINCT * FROM producto,fabricante WHERE fabricante.nombre='Lenovo' AND producto.codigo_fabricante=fabricante.codigo;
	SELECT DISTINCT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre='Lenovo';
-- 7 Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
	SELECT DISTINCT * FROM producto,fabricante WHERE fabricante.nombre='Crucial' AND producto.precio>200;
	SELECT DISTINCT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre='Crucial' AND producto.precio>200;
-- 8 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Con  y sin el operador IN.
	SELECT DISTINCT * FROM producto,fabricante WHERE fabricante.nombre='Hewlett-packard' OR fabricante.nombre='Asus' OR fabricante.nombre='Seagate';
	SELECT DISTINCT * FROM producto,fabricante WHERE fabricante.nombre IN('Hewlett-packard','Asus','Seagate');
	SELECT DISTINCT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre='Hewlett-packard' OR fabricante.nombre='Asus' OR fabricante.nombre='Seagate';
	SELECT DISTINCT * FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo IN('Hewlett-packard','Asus','Seagate');
-- 9 Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante'  FROM producto,fabricante WHERE fabricante.nombre LIKE '%e';
	SELECT DISTINCT producto.nombre AS 'Nombre_producto',producto.precio AS 'Precio_producto',fabricante.nombre AS 'Nombre_fabricante' FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre LIKE '%e';
-- 10 Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
	SELECT DISTINCT producto.nombre, producto.precio,fabricante.nombre AS 'nombre_fabricante' FROM producto,fabricante WHERE fabricante.nombre LIKE '%w%';
	SELECT DISTINCT producto.nombre, producto.precio, fabricante.nombre AS 'nombre_fabricante' FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND fabricante.nombre LIKE '%w%';
-- 11 Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)
	SELECT DISTINCT producto.nombre, producto.precio,fabricante.nombre AS 'nombre_fabricante' FROM producto,fabricante WHERE producto.precio>=180 ORDER BY producto.precio DESC,producto.nombre ASC;
	SELECT DISTINCT producto.nombre, producto.precio, fabricante.nombre AS 'nombre_fabricante' FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo AND producto.precio>=180 ORDER BY producto.precio DESC,producto.nombre ASC;
-- 12 Devuelve un listado con el código y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
	SELECT DISTINCT fabricante.codigo,fabricante.nombre FROM producto,fabricante WHERE producto.codigo_fabricante=fabricante.codigo;
	SELECT DISTINCT fabricante.codigo,fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo;