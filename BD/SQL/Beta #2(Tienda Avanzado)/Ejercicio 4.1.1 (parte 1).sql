-- 1.1. Obtener los nombres y los precios de los productos de la tienda.
SELECT * from tienda.producto;
SELECT nombre,precio from tienda.producto;
-- 1.2. Obtener el nombre de los productos cuyo precio sea mayor o igual a 200 €
SELECT nombre from tienda.producto where precio>=200;
-- 1.3. Obtener todos los datos de los artículos cuyo precio esté entre los 60 € y los
-- 120 € (ambas cantidades incluidas).
SELECT * FROM tienda.producto where precio<=60 AND precio>=0;
SELECT * FROM tienda.producto WHERE precio BETWEEN 0 AND 60;
-- 1.4. Obtener el nombre y el precio en pesetas (es decir, el precio en euros
-- multiplicado por 166'386).
SELECT nombre, precio*166,386 AS precio_pesetas FROM tienda.producto;
-- 1.5. Seleccionar el precio medio de todos los productos.
SELECT round(avg(tienda.producto.precio),2) AS precio_medio FROM tienda.producto;
-- 1.6. Obtener el precio medio de los artículos cuyo código de fabricante sea 2.
SELECT round(avg(tienda.producto.precio),2) AS precio_medio_id_2 FROM tienda.producto WHERE codigo_fabricante=2;
-- 1.7. Obtener el número de artículos cuyo precio sea mayor o igual a 180 €.
SELECT count(nombre) AS numero_objetos_mayor_igual_180 FROM tienda.producto WHERE precio>=180;
-- 1.8. Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual a 180€ y ordenarlos descendentemente por precio, y luego ascendentemente por nombre.
SELECT nombre,precio FROM tienda.producto WHERE precio>=180 ORDER BY precio DESC,nombre ASC;
-- 1.9. Obtener un listado completo de artículos, incluyendo por cada articulo los datos del articulo y de su fabricante.
SELECT*FROM tienda.producto INNER JOIN tienda.fabricante ON tienda.producto.codigo_fabricante=tienda.fabricante.codigo;
