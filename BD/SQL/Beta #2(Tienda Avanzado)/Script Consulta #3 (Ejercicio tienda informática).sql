-- 1.	Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM tienda.producto;
-- 2.	Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre,precio FROM tienda.producto;
-- 3.	Lista todas las columnas de la tabla producto.
SELECT*FROM tienda.producto;
-- 4.	Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre,precio AS'€',precio*1.09 AS '$' FROM tienda.producto;
-- 5.	Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
SELECT nombre AS 'nombre de producto',precio AS 'euros',precio*1.09 AS'dólares' FROM tienda.producto;
-- 6.	Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT upper(nombre),precio FROM tienda.producto;
-- 7.	Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT lower(nombre),precio FROM tienda.producto;
-- 8.	Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre,substr(nombre,1,2) FROM tienda.fabricante;
-- 9.	Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre, round(precio) FROM tienda.producto;
-- 10.	Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre,truncate(precio,0) FROM tienda.producto;