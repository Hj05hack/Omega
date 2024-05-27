SET SERVEROUTPUT ON;
    DECLARE
        precio NUMBER(7,2);
        iva NUMBER(2,0);
        precioTotal NUMBER(7,2);
    BEGIN
        precio:=&precio;
        iva:=&iva;
        precioTotal:=(precio+((precio*iva)/100));
        DBMS_OUTPUT.PUT_LINE('El precio con iva es: '|| precioTotal);
    END;