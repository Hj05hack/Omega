SET SERVEROUTPUT ON;
DECLARE
	direccion VARCHAR2(15);
	codigo_cliente VARCHAR2(8);
BEGIN
    codigo_cliente:=&codigo_cliente
    direccion:=&direccion;
	UPDATE CLIENTES SET DIRECCION=direccion WHERE CODC=codigo_cliente;
END;