--CON LOOP
DECLARE
   CURSOR CLIENTESS IS SELECT * FROM CLIENTES;
   CURSOR FACTURASS IS SELECT * FROM FACTURAS;
   CLIENTE CLIENTES%ROWTYPE;
   FACTURA FACTURAS%ROWTYPE;
BEGIN
   OPEN CLIENTESS;
   OPEN FACTURASS;
   LOOP
      FETCH CLIENTESS INTO CLIENTE;
      FETCH FACTURASS INTO FACTURA;
      EXIT WHEN CLIENTESS%NOTFOUND OR FACTURASS%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('EL NOMBRE ES: '||CLIENTE.NOMBRE||', EL CODIGO: '||CLIENTE.CODC||' ,EL NIF: '||FACTURA.NF||', EL CTD: '||FACTURA.CTD||', LA FECHA: '||FACTURA.FECHA||' EL IMPORTE: '||FACTURA.PRECIO||' Y EL CODIGO DE ARTICULO: '||FACTURA.CODA);
   END LOOP;
END;
--CON WHILE
DECLARE
   CURSOR CLIENTESS IS SELECT * FROM CLIENTES;
   CURSOR FACTURASS IS SELECT * FROM FACTURAS;
   CLIENTE CLIENTES%ROWTYPE;
   FACTURA FACTURAS%ROWTYPE;
BEGIN
   OPEN CLIENTESS;
   OPEN FACTURASS;
	FETCH CLIENTESS INTO CLIENTE;
    FETCH FACTURASS INTO FACTURA;
   WHILE (FACTURASS%FOUND AND CLIENTESS%FOUND) LOOP
      FETCH CLIENTESS INTO CLIENTE;
      FETCH FACTURASS INTO FACTURA;
      DBMS_OUTPUT.PUT_LINE('EL NOMBRE ES: '||CLIENTE.NOMBRE||', EL CODIGO: '||CLIENTE.CODC||' ,EL NIF: '||FACTURA.NF||', EL CTD: '||FACTURA.CTD||', LA FECHA: '||FACTURA.FECHA||' EL IMPORTE: '||FACTURA.PRECIO||' Y EL CODIGO DE ARTICULO: '||FACTURA.CODA);
   END LOOP;
END;
--CON FOR
DECLARE 
	CURSOR CLIENTESS IS SELECT * FROM CLIENTES;
	CURSOR FACTURASS IS SELECT * FROM FACTURAS;
	CLIENTE CLIENTES%ROWTYPE;
	FACTURA FACTURAS%ROWTYPE;
BEGIN
	FOR CLIENTE IN CLIENTESS LOOP
    		FOR FACTURA IN FACTURASS LOOP
				DBMS_OUTPUT.PUT_LINE('EL NOMBRE ES: '||CLIENTE.NOMBRE||', EL CODIGO: '||CLIENTE.CODC||' ,EL NIF: '||FACTURA.NF||', EL CTD: '||FACTURA.CTD||', LA FECHA: '||FACTURA.FECHA||' EL IMPORTE: '||FACTURA.PRECIO||' Y EL CODIGO DE ARTICULO: '||FACTURA.CODA);
			END LOOP;	
	END LOOP;
END;