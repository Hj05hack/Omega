USE jardineria;
-- 1. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
SELECT DISTINCT empleado.nombre, empleado.apellido1, empleado.apellido2, empleado.email,empleado.codigo_jefe 
FROM empleado 
WHERE empleado.codigo_jefe=7;

-- 2.- Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
SELECT DISTINCT pedido.codigo_pedido, pedido.codigo_cliente, fecha_esperada, fecha_entrega,estado
FROM pedido
WHERE pedido.fecha_entrega>pedido.fecha_esperada; 

-- 3. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
SELECT DISTINCT*
FROM pedido
WHERE fecha_pedido LIKE '2009%';

-- 4. Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
SELECT DISTINCT*
FROM pago
WHERE fecha_pago LIKE '2008%' AND forma_pago LIKE 'Paypal';

-- 5. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
SELECT DISTINCT*
FROM cliente
WHERE ciudad='Madrid' AND codigo_empleado_rep_ventas IN(11,30);

-- 6. Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas. (SQL2)
SELECT cliente.nombre_cliente AS 'nombre_cliente', empleado.nombre AS 'nombre_empleado'
FROM empleado 
INNER JOIN cliente
ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
LEFT JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente
WHERE pago.codigo_cliente IS NULL;

-- 7. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada. (SQL1)
SELECT DISTINCT oficina.codigo_oficina,oficina.linea_direccion1,oficina.linea_direccion2
FROM oficina,cliente
WHERE cliente.ciudad LIKE 'Fuenlabrada';

-- 8. Devuelve un listado que muestre el nombre de cada empleado, el nombre de su jefe y el nombre del jefe de su jefe. (SQL2)
SELECT DISTINCT empleado2.nombre AS 'nombre_empleado', empleado1.nombre AS 'nombre_jefe', empleado3.nombre AS 'nombre_jefe_del_jefe'
FROM empleado empleado1 
INNER JOIN empleado empleado2
ON empleado1.codigo_empleado=empleado2.codigo_jefe
INNER JOIN empleado empleado3
ON empleado2.codigo_empleado=empleado3.codigo_jefe;

-- 9. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido. (SQL2)
SELECT cliente.*
FROM cliente 
LEFT JOIN pedido
ON  cliente.codigo_cliente = pedido.codigo_cliente
WHERE pedido.codigo_cliente IS NULL;

-- 10. Devuelve un listado de los productos que nunca han aparecido en un pedido. (SQL2)
SELECT producto.*
FROM producto 
LEFT JOIN detalle_pedido
ON producto.codigo_producto=detalle_pedido.codigo_producto
WHERE detalle_pedido.codigo_pedido IS NULL;

-- 11. ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
SELECT count(DISTINCT cliente.codigo_cliente)
FROM cliente
WHERE cliente.ciudad LIKE 'Madrid';

-- 12. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
SELECT cliente.ciudad,count(DISTINCT cliente.codigo_cliente) AS 'clientes_en_ciudad'
FROM cliente
WHERE cliente.ciudad LIKE 'M%' 
GROUP BY 1;

-- 13.Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
SELECT empleado.nombre AS nombre_empleado,count(DISTINCT cliente.codigo_cliente) AS 'numero de clientes'
FROM empleado INNER JOIN cliente
ON cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
GROUP BY empleado.codigo_empleado;

-- 14.Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
SELECT cliente.nombre_contacto, cliente.apellido_contacto, max(pago.fecha_pago) AS 'ultimo_pago', min(pago.fecha_pago) AS 'primer_pago'
FROM cliente INNER JOIN pago
ON cliente.codigo_cliente=pago.codigo_cliente
GROUP BY 1,2;

-- 15.Calcula el número de productos diferentes que hay en cada uno de los pedidos.
SELECT detalle_pedido.codigo_pedido,count(detalle_pedido.codigo_producto) AS 'numero_de_diferentes_productos'
FROM detalle_pedido
GROUP BY 1;

-- 16.Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
SELECT detalle_pedido.codigo_pedido, sum(detalle_pedido.cantidad) AS 'cantidad_productos'
FROM detalle_pedido
GROUP BY 1;

-- 17.Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. 
-- El listado deberá estar ordenado por el número total de unidades vendidas.
SELECT producto.nombre, sum(detalle_pedido.cantidad) AS 'total_unidades'
FROM producto INNER JOIN detalle_pedido
ON producto.codigo_producto = detalle_pedido.codigo_producto
GROUP BY 1
ORDER BY total_unidades DESC
LIMIT 20;

-- 18.La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA y el total facturado. La base imponible se
-- calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle pedido. El IVA es el 21 % de la base imponible, 
-- y el total la suma de los dos campos anteriores.
SELECT 1.21*(sum(detalle_pedido.cantidad*detalle_pedido.precio_unidad)) AS 'facturacion_historica (€)'
FROM detalle_pedido;

-- 19.Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado
-- y total facturado con impuestos (21% IVA).
SELECT producto.nombre AS 'nombre_producto', sum(detalle_pedido.cantidad) AS 'unidades_vendidas', sum(detalle_pedido.cantidad*detalle_pedido.precio_unidad) AS 'facturacion_sin_IVA', (1.21*sum(detalle_pedido.cantidad*detalle_pedido.precio_unidad))AS 'facturacion_con_IVA'
FROM producto INNER JOIN detalle_pedido
ON producto.codigo_producto=detalle_pedido.codigo_producto
GROUP BY 1
HAVING sum(detalle_pedido.cantidad*detalle_pedido.precio_unidad) > 3000
ORDER BY facturacion_con_IVA DESC;

-- 20. Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
SELECT sum(pago.total) AS 'suma_total' , YEAR(pago.fecha_pedido) AS 'año'
FROM pago
GROUP BY año, suma_total;