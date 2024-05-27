-- 1.1. Obtener los nombres y los precios de los productos de la tienda.
SELECT nombre,precio
FROM articulos;
-- 1.2. Obtener el nombre de los productos cuyo precio sea mayor o igual a 200 €
SELECT nombre
FROM articulos
WHERE precio >=200;
-- 1.3. Obtener todos los datos de los artículos cuyo precio esté entre los 60 € y los 120 € (ambas cantidades incluidas).
/* Con AND */
SELECT *
FROM articulos
WHERE precio<=120 AND precio>=60;
/* Con BETWEEN */
SELECT *
FROM articulos
WHERE precio BETWEEN 60 AND 120;
-- 1.4. Obtener el nombre y el precio en pesetas (es decir, el precio en euros multiplicado por 166'386).
SELECT nombre,precio*166.386 AS 'precio en pesetas'
FROM articulos;
-- 1.5. Seleccionar el precio medio de todos los productos.
SELECT avg(precio)
FROM articulos;
-- 1.6. Obtener el precio medio de los artículos cuyo código de fabricante sea 2.
SELECT avg(precio)
FROM articulos
WHERE fabricante=2;
-- 1.7. Obtener el número de artículos cuyo precio sea mayor o igual a 180 €.
SELECT count(articulos)
FROM articulos
WHERE precio >=180;
-- 1.8. Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual a 180€ y ordenarlos descendentemente por precio, y luego ascendentemente por nombre.
SELECT nombre,precio
FROM articulos 
WHERE precio >=180
ORDER BY precio DESC,nombre ASC;
-- 1.9. Obtener un listado completo de artículos, incluyendo por cada articulo los datos del articulo y de su fabricante.
SELECT*
FROM articulos INNER JOIN fabricante
WHERE articulos.fabricante=fabricantes.codigo;
-- 1.10. Obtener un listado de artículos, incluyendo el nombre del artículo, su precio, y el nombre de su fabricante.
SELECT articulos.* ,fabricantes.nombre
FROM articulos INNER JOIN fabricantes
WHERE articulos.fabricante = fabricantes.codigo;
-- 1.11. Obtener el precio medio de los productos de cada fabricante, mostrando solo los códigos de fabricante.
SELECT fabricante
FROM articulos
GROUP BY fabricante
HAVING avg(precio);
-- 1.12. Obtener el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante.
SELECT fabricantes.nombre
FROM articulos INNER JOIN fabricantes
WHERE articulos.fabricante = fabricantes.codigo
AND avg(articulos.precio) =
	(SELECT avg(precio)
     FROM articulos);
-- 1.13. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio sea mayor o igual a 150 €.
SELECT fabricantes.nombre
FROM fabricantes INNER JOIN articulos
ON fabricantes.codigo = articulos.fabricante
GROUP BY 1
HAVING avg(articulos.precio) >= 150;
-- 1.14. Obtener el nombre y precio del artículo más barato.
SELECT nombre,precio
FROM articulos
WHERE precio=
	(SELECT min(precio)
     FROM articulos);
-- 1.15. Obtener una lista con el nombre y precio de los artículos más caros de cada fabricante (incluyendo el nombre del fabricante).
SELECT fabricantes.nombre,articulos.nombre,articulos.precio
FROM fabricantes INNER JOIN articulos
ON fabricantes.codigo = articulos.fabricante
WHERE articulos.precio =
	(SELECT max(precio)
    FROM articulos);
-- 1.16. Añadir un nuevo producto: Altavoces de 70 € (del fabricante 2).
INSERT INTO articulos VALUES(1,'Altavoces',70,2);
-- 1.17. Cambiar el nombre del producto 8 a 'Impresora Laser'.
UPDATE articulos SET nombre ='Impresora Laser' WHERE codigo=8;
-- 1.18. Aplicar un descuento del 10 % (multiplicar el precio por 0'9) a todos los productos.
UPDATE articulos SET precio = precio*0.9;
-- 1.19. Aplicar un descuento de 10 € a todos los productos cuyo precio sea mayor o igual a 120 €.
UPDATE articulos SET precio = (precio-10) WHERE precio>=120;