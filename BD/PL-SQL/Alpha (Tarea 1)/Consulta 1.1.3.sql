SET SERVEROUTPUT ON;
DECLARE
    codigo VARCHAR2(8);
    nombre VARCHAR2(20);
BEGIN
    codigo:=&codigo;
	nombre:=&nombre;
    INSERT INTO ARTICULOS VALUES (codigo, nombre, NULL, NULL, NULL, NULL);
END;