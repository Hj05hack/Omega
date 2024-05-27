-- Calcula el número total de productos que hay en la tabla productos.
SELECT count(*) FROM producto;    
-- Calcula el número total de fabricantes que hay en la tabla fabricante.
SELECT count(*) FROM fabricante;
-- 1 Calcula el número de valores distintos de código de fabricante aparecen en la tabla productos.
SELECT DISTINCT count(codigo) FROM fabricante;
-- 2 Calcula la media del precio de todos los productos.
SELECT AVG(precio) FROM producto;
-- 3 Calcula el precio más barato de todos los productos.
SELECT LOWER(precio) FROM producto;
-- Calcula el precio más caro de todos los productos.
SELECT MAX(precio) FROM productos;
-- Lista el nombre y el precio del producto más barato.
SELECT LOWER(precio),producto.precio,producto.nombre FROM producto LIMIT 1;
-- Lista el nombre y el precio del producto más caro.
SELECT MAX(precio),producto.nombre,producto.precio FROM producto LIMIT 1;
-- Calcula la suma de los precios de todos los productos.
SELECT SUM(precio) FROM producto;
-- Calcula la media del precio de todos los productos del fabricante Asus.
SELECT AVG(precio) FROM producto WHERE producto.codigo_fabricante=1;
    SELECT AVG(precio) FROM producto JOIN fabricante ON producto.codigo_fabricante=fabricante.codigo ORDER BY fabricante.codigo;
-- Calcula el precio más barato de todos los productos del fabricante Asus.
SELECT LOWER(precio) FROM producto,fabricante WHERE fabricante.nombre LIKE 'Asus';
SELECT MIN(producto.precio)
    FROM producto JOIN fabricante
    ON producto.codigo_fabricante= fabricante.codigo
    GROUP BY fabricante.nombre
    HAVING fabricante.nombre LIKE 'Asus';
-- Calcula el precio más caro de todos los productos del fabricante Asus.
SELECT MAX(producto.precio) FROM producto WHERE producto.codigo_fabricante=1;
-- Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.
SELECT MAX(producto.precio), LOWER(precio),AVG(precio),count(*)
    FROM producto
    JOIN fabricante
    ON producto.codigo_fabricante= fabricante.codigo
    GROUP BY fabricante.nombre
    HAVING fabricante.nombre LIKE 'Crucial';
-- Muestra el número total de productos que tiene cada uno de los fabricantes.
-- El listado también debe incluir los fabricantes que no tienen ningún producto.
-- El resultado mostrará dos columnas, una con el nombre del fabricante
-- y otra con el número de productos que tiene.
-- Ordene el resultado descendentemente por el número de productos.
SELECT
  fabricante.nombre, COUNT(producto.codigo_fabricante) AS total_productos
FROM fabricante
LEFT JOIN producto ON fabricante.codigo = producto.codigo_fabricante
GROUP BY fabricante.nombre
ORDER BY total_productos DESC;
#el count devuelve el numero de filas, da igual cuantas filas pongas


-- Muestra el precio máximo, precio mínimo y precio medio de los productos
-- de cada uno de los fabricantes.
SELECT
  fabricante.codigo,
  MAX(productos.precio),
  MIN(productos.precio),
  AVG(productos.precio)
FROM fabricante
JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY fabricante.codigo;
-- El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.
-- Muestra el precio máximo, precio mínimo, precio medio
-- y el número total de productos de los fabricantes que tienen un precio medio
-- superior a 200€. No es necesario mostrar el nombre del fabricante,
-- con el código del fabricante es suficiente pero que este ordenado por dicho codigo.
SELECT
  fabricante.codigo ,
  MAX(productos.precio),
  MIN(productos.precio),
  AVG(productos.precio) AS media_precio,
  COUNT(productos.fabricante_codigo) AS total_productos
FROM fabricante
JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY fabricante.nombre
HAVING media_precio > 200
ORDER BY fabricante.codigo;
-- Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo,
-- precio medio y el número total de productos de los fabricantes que tienen
-- un precio medio superior a 200€. Es necesario mostrar el nombre del fabricante.
SELECT fabricante.nombre, MAX(precio),MIN(precio),AVG(precio) AS precio_medio,count(productos.fabricante_codigo)
    FROM fabricante
LEFT JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY fabricante.codigo
HAVING precio_medio > 200;
-- Calcula el número de productos que tienen un precio mayor o igual a 180€.
SELECT COUNT(*)
FROM producto
WHERE precio >= 180;
-- Lista el precio medio los productos de cada fabricante, mostrando solamente el código del fabricante
-- y ordenado por el códigofabricante.
SELECT fabricante.codigo,avg(productos.precio)
FROM fabricante
LEFT JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY 1
ORDER BY codigo_fabricante;
-- Lista el precio medio los productos de cada fabricante,  mostrando solamente el nombre del fabricante.
SELECT fabricante.nombre AS 'nombre_fabricante', avg(producto.precio)
FROM fabricante
LEFT JOIN producto
ON fabricante.codigo = producto.codigo_fabricante
GROUP BY 1;
-- Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.
SELECT
    fabricante.nombre
    FROM fabricante
    JOIN producto ON fabricante.codigo= producto.codigo_fabricante
    GROUP BY fabricante.codigo
    HAVING producto.precio>=150;
-- Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.
SELECT
  fabricante.nombre
FROM fabricante
LEFT JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY fabricante.codigo
HAVING COUNT(productos.fabricante_codigo) >= 2;
-- Devuelve un listado con los nombres de los fabricantes
-- y el número de productos que tiene cada uno con
-- un precio superior o igual a 220 €.
-- No es necesario mostrar el nombre de los fabricantes
-- que no tienen productos que cumplan la condición.
SELECT fabricante.nombre ,COUNT(productos.fabricante_codigo)
FROM fabricante
JOIN productos ON fabricante.codigo = productos.fabricante_codigo
GROUP BY fabricante.codigo;