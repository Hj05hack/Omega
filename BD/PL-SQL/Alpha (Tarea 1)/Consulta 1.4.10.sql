CREATE OR REPLACE FUNCTION PRECIO_SIN_IVA(PRECIO ARTICULOS.PVP%TYPE,IVA ARTICULOS.IVA%TYPE)
RETURN NUMBER
IS
	PRECIO_SIN_IVA NUMBER(7,2);
BEGIN
	PRECIO_SIN_IVA:=((PRECIO-((PRECIO*IVA)/100)));
	RETURN PRECIO_SIN_IVA;
END;
/
BEGIN
	DBMS_OUTPUT.PUT_LINE('EL PRECIO SIN IVA ES: '||PRECIO_SIN_IVA(458,21));
END;