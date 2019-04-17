/*Create view view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition
*/

CREATE view empregados_depts AS 
SELECT first_name || ' ' || last_name,
        department_name,city
FROM employees NATURAL JOIN departments
NATURAL JOIN locations; --ERRO must name this expression with a column alias


CREATE view empregados_depts AS 
SELECT first_name || ' ' || last_name as nome,
        department_name,city
FROM employees NATURAL JOIN departments
NATURAL JOIN locations;

drop view empledos_depts;

select * from empregados_depts
WHERE DEPARTMENT_NAME LIKE 'F%';

select COUNT(*),DEPARTMENT_NAME 
from empregados_depts
GROUP BY DEPARTMENT_NAME;

CREATE OR REPLACE view empregados_depts AS 
SELECT first_name || ' ' || last_name as nome,
        department_name,city,COUNTRY_NAME
FROM employees NATURAL JOIN departments
NATURAL JOIN locations
NATURAL JOIN COUNTRIES;

SELECT * FROM EMPREGADOS_DEPTS;