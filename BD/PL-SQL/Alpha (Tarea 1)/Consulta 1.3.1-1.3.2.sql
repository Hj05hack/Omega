DROP TABLE PERSONAS;
create table personas(
    DNI Varchar2(10) PRIMARY KEY,
    NOMBRE Varchar2(200) NOT NULL,
    EDAD    Number(3) NOT NULL,
    constraint CONSTRAINT_EDAD CHECK (EDAD>=16 AND EDAD<=65));

insert into personas values('00000000A','Pepe',45);
insert into personas values('11111111B','Marta',64);
insert into personas values('2222222C','Juan',65); 
insert into personas values('3333333D','Antonia',65);
commit;
select * from personas;