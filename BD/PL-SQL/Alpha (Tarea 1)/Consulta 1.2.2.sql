SET SERVEROUTPUT ON;

DECLARE
	CODIGO_ARTICULO VARCHAR2(8):='A1';
	PVP_ARTICULO NUMBER(22);
	PRECIO_ARTICULO NUMBER(22);
BEGIN
	SELECT PVP
    INTO PRECIO_ARTICULO
    FROM ARTICULOS
    WHERE CODA='A1';

	SELECT PVP
    INTO PVP_ARTICULO
    FROM ARTICULOS
    WHERE CODA='A1';

	IF PVP_ARTICULO<100 THEN
        PRECIO_ARTICULO:=PRECIO_ARTICULO+5;
	ELSIF PVP_ARTICULO BETWEEN 100 AND 1000 THEN
        PRECIO_ARTICULO:=PRECIO_ARTICULO+15;
	ELSIF PVP_ARTICULO>100 THEN
        PRECIO_ARTICULO:=PRECIO_ARTICULO+50;
	ELSE
        DBMS_OUTPUT.PUT_LINE('NO SE HA MODIFICADO EL PRECIO');
    END IF;

    UPDATE ARTICULOS SET PVP=PRECIO_ARTICULO WHERE CODA='A1';
	DBMS_OUTPUT.PUT_LINE('EL PRECIO ERA '||PVP_ARTICULO||' Y AHORA ES '||PRECIO_ARTICULO);
END;