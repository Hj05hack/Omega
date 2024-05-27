-- 1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
SELECT oficina.codigo_oficina,oficina.ciudad
FROM oficina;

-- 2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
SELECT oficina.ciudad, oficina.telefono
FROM oficina
WHERE oficina.pais LIKE 'España';

-- 3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
SELECT empleado.nombre, empleado.apellido1,empleado.apellido2,empleado.email
FROM empleado
WHERE empleado.codigo_jefe = 7;

-- 4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
SELECT empleado.puesto,empleado.nombre, empleado.apellido1, empleado.apellido2,empleado.email
FROM empleado
WHERE empleado.codigo_jefe IS NULL;

-- 5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
SELECT DISTINCT empleado.nombre,empleado.apellido1,empleado.apellido2,empleado.puesto
FROM empleado
INNER JOIN cliente
WHERE empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas;

-- 6. Devuelve un listado con el nombre de los todos los clientes españoles.
SELECT DISTINCT cliente.nombre_cliente
FROM cliente
WHERE cliente.pais LIKE 'Spain';

-- 7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.
SELECT DISTINCT pedido.estado
FROM pedido;

-- 8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Ten en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelve la consulta:
	-- a. Utilizando la función YEAR de MySQL.
SELECT DISTINCT cliente.codigo_cliente 
FROM cliente
INNER JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente
WHERE YEAR(pago.fecha_pago) =2008;

-- b. Utilizando la función DATE_FORMAT de MySQL.
SELECT DISTINCT cliente.codigo_cliente 
FROM cliente
INNER JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente
WHERE DATE_FORMAT(pago.fecha_pago, '%Y') =2008; 
	-- c. Sin utilizar ninguna de las funciones anteriores.
SELECT DISTINCT cliente.codigo_cliente 
FROM cliente
INNER JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente
WHERE pago.fecha_pago LIKE '2008%';

-- 9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
SELECT pedido.codigo_pedido , pedido.codigo_cliente , pedido.fecha_esperada, pedido.fecha_entrega
FROM pedido
WHERE pedido.fecha_entrega > pedido.fecha_esperada;

-- 10.Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
    -- a. Utilizando la función ADDDATE de MySQL.

	-- b. Utilizando la función DATEDIFF de MySQL.
    -- c. ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta - ?

-- 11.Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
SELECT pedido.*
FROM pedido
WHERE pedido.fecha_pedido LIKE '2009%'
AND pedido.estado LIKE 'Rechazado';

-- 12.Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
SELECT pedido.*
FROM pedido
WHERE pedido.fecha_pedido LIKE '%01%';

-- 13.Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
SELECT pedido.*
FROM pedido
INNER JOIN pago
ON pedido.codigo_pedido = pago.codigo_pedido
WHERE pedido.fecha_pedido LIKE '2008%'
AND pago.forma_pago LIKE 'Paypal'
ORDER BY pedido.fecha_pedido DESC;

-- 14.Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
SELECT DISTINCT pago.forma_pago
FROM pago;

-- 15.Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
SELECT producto.*
FROM producto
WHERE producto.gama LIKE 'Ornamentales'
AND producto.cantidad_en_stock > 100
ORDER BY producto.precio_venta DESC;

-- 16.Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
SELECT cliente.* 
FROM cliente 
WHERE cliente.ciudad LIKE 'Madrid'
AND cliente.codigo_empleado_rep_ventas IN(11,30);