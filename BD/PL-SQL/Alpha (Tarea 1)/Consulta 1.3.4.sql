DECLARE
	CURSOR PERSONASS IS SELECT * FROM PERSONAS;
	PERSONA PERSONAS%ROWTYPE;
	ANADIDO NUMBER(2);
BEGIN
    SAVEPOINT UNO;
	FOR PERSONA IN PERSONASS LOOP
		ANADIDO:=(PERSONA.EDAD+2);
		DBMS_OUTPUT.PUT_LINE('LA EDAD ORIGINAL ES: '|| PERSONA.EDAD ||' LA MODIFICADA '||ANADIDO);
		UPDATE PERSONAS SET EDAD=ANADIDO;
	END LOOP;
EXCEPTION
    WHEN OTHERS THEN
    	DBMS_OUTPUT.PUT_LINE('EDAD SOBREPASADA');
END;