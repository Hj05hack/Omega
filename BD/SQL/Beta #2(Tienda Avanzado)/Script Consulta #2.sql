SELECT*FROM tienda.ventas;
SELECT id,cantidad_comprada, precio_por_elemento, cantidad_comprada * precio_por_elemento AS 'precio_total' FROM ventas;
SELECT precio_por_elemento, cantidad_comprada, cantidad_comprada / precio_por_elemento AS "precio por gramo" FROM ventas;
SELECT concat_ws(" ",precio_por_elemento,cantidad_comprada) AS total FROM ventas;