SET SERVEROUTPUT ON;
DECLARE
	maxPVP NUMBER(7,2);
BEGIN
	SELECT PVP
    INTO maxPVP
	FROM ARTICULOS
	WHERE PVP=
    	(SELECT max(pvp)
    	 FROM ARTICULOS);

	DBMS_OUTPUT.PUT_LINE('El precio maximo es: '|| maxPVP);
END;