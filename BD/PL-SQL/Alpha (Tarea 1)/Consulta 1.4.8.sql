CREATE OR REPLACE PROCEDURE CONSULTA_NOMBRE_PVP(CODIGO ARTICULOS.CODA%TYPE)
IS
	NOMBRE ARTICULOS.NOMBRE%TYPE;
	PVP ARTICULOS.PVP%TYPE;
BEGIN
	SELECT NOMBRE INTO NOMBRE FROM ARTICULOS WHERE CODA=CODIGO;
	SELECT PVP INTO PVP FROM ARTICULOS WHERE CODA=CODIGO;
	DBMS_OUTPUT.PUT_LINE('NOMBRE: '||NOMBRE||' PVP: '||PVP);
END;
/
BEGIN
	CONSULTA_NOMBRE_PVP('A1');
END;