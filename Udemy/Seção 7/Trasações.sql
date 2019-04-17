-- COMMIT
drop table prueba;
create table prueba
(
  col1 number,
  col2 number
);

insert into prueba values(3,9);

select* from prueba;
commit;

set transaction name 'actualiza fila1';

update prueba set col2=0 where col1=1;

select * from prueba;

SAVEPOINT depois_act_1;

update prueba set col2=-1 where col1=2;

savepoint depois_act_2;

rollback to savepoint depois_act_1;

select * from prueba;

update prueba set col2=-10 where col1=3;

rollback;

insert into prueba values(6,36);

commit;

select * from prueba;

delete from prueba where col1=6;