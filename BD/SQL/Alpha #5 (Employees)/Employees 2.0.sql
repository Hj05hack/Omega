-- A la tabla departaments añadir un campo llamado fecha de creacion de tipo fecha que no acepte nulos.
ALTER TABLE departments ADD COLUMN tipo_fecha DATE NOT NULL;--
-- Modificar el campo to_date de la tabla Titles para que se llame fecha
ALTER TABLE titles RENAME COLUMN to_date TO fecha;
-- De la tabla dept_manager hacer que el campo from_date tenga el valor  por defecto del 1 de enero de 2022
ALTER TABLE dept_manager ALTER COLUMN from_date SET DEFAULT "2022/01/01"; 
-- El atributo first_name de employees: cambiar el tipo de dato para que permita almacenar 25 caracteres y que no pueda contener nulos.
ALTER TABLE employees MODIFY COLUMN first_name varchar(25) NOT NULL;
-- Borrar la columna gender de la tabla Employees
ALTER TABLE employees DROP COLUMN gender;
-- Añadir a la tabla Titles la columna titulos de tipo VARCHAR(50) NOT NULL y que aparezca en primer lugar.
ALTER TABLE titles ADD COLUMN titulos varchar(50) NOT NULL FIRST;
-- De la tabla Employees añadir una columna que se llame apellido2 VARCHAR(18) NOT NULL y que aparezca despúes del last_name
ALTER TABLE employees ADD COLUMN apellido2 VARCHAR(18) NOT NULL AFTER last_name;