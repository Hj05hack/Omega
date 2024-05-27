USE jardineria;
-- 1. Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
SELECT  cliente.nombre_cliente AS 'nombre_cliente' , empleado.nombre AS 'nombre_empleado', empleado.apellido1 AS 'apellido empleado'
FROM cliente 
INNER JOIN empleado
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado;

-- 2. Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT DISTINCT cliente.nombre_cliente AS 'nombre_cliente', empleado.nombre AS 'nombre_representante_ventas'
FROM empleado 
INNER JOIN cliente
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
INNER JOIN pago
ON cliente.codigo_cliente=pago.codigo_cliente;

-- 3. Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
SELECT DISTINCT cliente.nombre_cliente AS 'nombre_cliente', empleado.nombre AS 'nombre_empleado'
FROM empleado 
INNER JOIN cliente
ON empleado.codigo_empleado=cliente.codigo_empleado_rep_ventas
LEFT JOIN pago
ON cliente.codigo_cliente=pago.codigo_cliente
WHERE pago.codigo_cliente IS NULL;

-- 4. Devuelve el nombre de los clientes que han hecho pagos y el nombre desus representantes junto con la ciudad de la oficina a la que pertenece el representante.
SELECT DISTINCT cliente.nombre_cliente AS 'nombre_cliente', empleado.nombre AS 'nombre_empleado' , oficina.ciudad AS 'ciudad_de_la_oficina'
FROM cliente
INNER JOIN empleado
ON cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
INNER JOIN oficina
ON empleado.codigo_oficina=oficina.codigo_oficina;

-- 5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
SELECT cliente.nombre_cliente, empleado.nombre AS 'nombre_empleado' ,oficina.ciudad AS 'ciudad_oficina'
FROM cliente 
INNER JOIN empleado
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
INNER JOIN oficina
ON empleado.codigo_oficina =oficina.codigo_oficina;

-- 6. Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
SELECT DISTINCT oficina.linea_direccion1, oficina.linea_direccion2
FROM oficina 
INNER JOIN empleado
ON empleado.codigo_oficina = oficina.codigo_oficina
INNER JOIN cliente
ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
WHERE cliente.ciudad LIKE 'Fuenlabrada';

-- 7. Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
SELECT DISTINCT cliente.nombre_cliente , empleado.nombre AS 'nombre empleado',oficina.ciudad AS 'ciudad de la oficina'
FROM cliente 
INNER JOIN empleado
ON cliente.codigo_empleado_rep_ventas=empleado.codigo_empleado
INNER JOIN oficina
ON empleado.codigo_oficina=oficina.codigo_oficina;

-- 8. Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
SELECT empleado1.nombre AS 'nombre_empleado', empleado2.nombre AS 'nombre_jefe'
FROM empleado empleado1 
INNER JOIN empleado empleado2
ON empleado1.codigo_empleado=empleado2.codigo_jefe;

-- 9. Devuelve un listado que muestre el nombre de cada empleado, el nombre de su jefe y el nombre del jefe de su jefe.
SELECT empleado1.nombre AS 'nombre empleado' , empleado2.nombre AS 'nombre jefe', empleado3.nombre AS 'nombre jefe del jefe'
FROM empleado empleado1
RIGHT JOIN empleado empleado2
ON empleado1.codigo_empleado=empleado2.codigo_jefe
LEFT JOIN empleado empleado3
ON empleado2.codigo_jefe=empleado3.codigo_empleado;

-- 10. Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
SELECT DISTINCT cliente.nombre_cliente 
FROM cliente 
INNER JOIN pedido
ON cliente.codigo_cliente= pedido.codigo_cliente
WHERE pedido.fecha_entrega > pedido.fecha_esperada;

-- 11. Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
SELECT producto.gama,cliente.nombre_cliente
FROM cliente
LEFT JOIN pedido
ON cliente.codigo_cliente=pedido.codigo_cliente
INNER JOIN detalle_pedido
ON pedido.codigo_pedido = detalle_pedido.codigo_pedido
INNER JOIN producto
ON detalle_pedido.codigo_producto=producto.codigo_producto
INNER JOIN gama_producto
ON producto.gama=gama_producto.gama;

-- 12. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
SELECT cliente.* ,pago.codigo_cliente
FROM cliente
LEFT JOIN pago
ON cliente.codigo_cliente = pago.codigo_cliente
WHERE pago.codigo_cliente IS NULL;

-- 13. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
SELECT cliente.* ,pedido.codigo_cliente
FROM cliente
LEFT JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE pedido.codigo_cliente IS NULL;

-- 14. Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
SELECT cliente.* ,pago.codigo_cliente,pedido.codigo_cliente
FROM pago
RIGHT JOIN cliente
ON cliente.codigo_cliente = pago.codigo_cliente
LEFT JOIN pedido
ON cliente.codigo_cliente = pedido.codigo_cliente
WHERE pago.codigo_cliente IS NULL
AND pedido.codigo_cliente IS NULL;

-- 15. Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
SELECT empleado.* ,oficina.codigo_oficina
FROM empleado
LEFT JOIN oficina
ON empleado.codigo_oficina = oficina.codigo_oficina
WHERE oficina.codigo_oficina IS NULL;

-- 16. Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
SELECT empleado.* ,cliente.codigo_empleado_rep_ventas
FROM empleado
LEFT JOIN cliente
ON empleado.codigo_empleado = cliente.codigo_empleado_rep_ventas
WHERE cliente.codigo_empleado_rep_ventas IS NULL;

-- 17. Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
SELECT empleado.* ,oficina.*,cliente.codigo_cliente
FROM cliente
RIGHT JOIN empleado
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
INNER JOIN oficina
ON empleado.codigo_oficina = oficina.codigo_oficina
WHERE cliente.codigo_cliente IS NULL;

-- 18. Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado. (He entendido que es o uno u otro)
SELECT empleado.*,oficina.codigo_oficina, cliente.codigo_cliente
FROM cliente
RIGHT JOIN empleado
ON cliente.codigo_empleado_rep_ventas = empleado.codigo_empleado
LEFT JOIN oficina
ON empleado.codigo_oficina = oficina.codigo_oficina
WHERE cliente.codigo_cliente IS NULL
OR oficina.codigo_oficina IS NULL;

-- 19. Devuelve un listado de los productos que nunca han aparecido en un pedido.
SELECT DISTINCT producto.*,detalle_pedido.codigo_producto AS 'aparicion en pedido'
FROM producto
LEFT JOIN detalle_pedido
ON producto.codigo_producto = detalle_pedido.codigo_producto
WHERE detalle_pedido.codigo_producto IS NULL;

-- 20. Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.
SELECT DISTINCT producto.nombre , producto.descripcion , gama_producto.imagen,detalle_pedido.codigo_producto
FROM detalle_pedido
RIGHT JOIN producto
ON detalle_pedido.codigo_producto = producto.codigo_producto
LEFT JOIN gama_producto
ON gama_producto.gama = producto.gama
WHERE detalle_pedido.codigo_producto IS NULL;
