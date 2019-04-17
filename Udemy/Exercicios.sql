/*1. mostrar las columnas de jobs donde el salario minimo es mayor que 10000*/
Select * from jobs where min_salary > 10000;

/*2. Mostrar first_name y hire_date de los empleados*/

SELECT first_name, hire_date 
FROM EMPLOYEES 
WHERE hire_date BETWEEN 2002 and 2005;
    /*Correção*/
    SELECT first_name, hire_date 
    FROM EMPLOYEES 
    WHERE TO_CHAR(hire_date,'YYYY') BETWEEN 2002 and 2005
    ORDER BY hire_date;
  
/*3. Mostrar first_name y hire_date de los empleados que son IT Programmer
o Sales Man*/
SELECT first_name,hire_date 
FROM employees
WHERE id_job IN('IT_PROG','SA_MAN');

/*4 Mostra empleados que ingresaron después de 1º de enero de 2008*/
SELECT * 
FROM employees
WHERE TO_CHAR(hire_date,'DD/MM/YY') > '01/01/08';

    /*Correção*/
    SELECT * 
    FROM employees
    WHERE hire_date> '01/01/08';
    
/*5 Mostrar los detalles de los empleados con id 150 o 160*/
SELECT * 
FROM EMPLOYEES
--WHERE employee_id in (150,160)
WHERE employee_id =150 OR employee_id = 160;

/*6 Mostra first_name,salary,commission_pet y hire_date de los empleados 
con salario menor a 10000*/

SELECT first_name,salary,commission_pet,hire_date
FROM employees
WHERE salary < 10000;

/*7 Mostrar job_title la diferencia entre el salario minimo y maximo para los jobs
con max_salary en el rango de 10000 a 20000 */

SELECT  job_title, max_salary - min_salary "Diferença"
FROM jobs
WHERE max_salary BETWEEN 10000 AND 20000;

/*8 Mostrar first_name,salary y redondear el salario a millares de todos 
los empleados*/

SELECT first_name,salary, ROUND(salary,-3)
FROM employees;

/*9 Mostrar los detalles de los jobs em orden descendente por title*/

SELECT * 
FROM jobs
ORDER by job_title DESC;

/*10 Mostrar el nombre completo de los empleados cuyo first_name
o last_name comiece com s*/

SELECT first_name ||' '||last_name
FROM employees
WHERE first_name LIKE 'S%' 
OR
last_name LIKE 'S%';

/*11 Mostrar los datos de los empleados que ingresaron durante el mes de mayo*/

SELECT *
FROM employees
WHERE TO_CHAR(hire_date,'MON') = 'May';

/*12 Mostrar los datos de los empleados cuyo commission_pet es nulo,
tiene un salario en el rango de 5000 y 10000 y su departamento es 30*/

SELECT * 
FROM employees 
WHERE commission_pct IS NULL     /*Se colocar = Null, não vai retornar o resultado correto,*/
AND salary BETWEEN 5000 AND 10000/*pois um valor nunca será igual a null,tem q usar o IS*/

AND department_id =30;

/*13 Mostrar first_name,fecha de ingreso y primer dia del siguinte mes a la 
fecha de ingreso de los empleados*/

SELECT first_name,hire_date, LAST_DAY(hire_date)+1
FROM employees;

/*14 Mostrar first_name y años de experiencia de los empleados*/

SELECT first_name, FLOOR(SYSDATE-hire_date/365.25) /*FLOOR é para arredondar*/
FROM employees;

/*15 Mostrar first_name de los empleados que ingresaron durante el anõ 2001*/
SELECT first_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date,'YYYY') = '2001';

/*16 Mostrar first_name, last_name después de convertir la primera letra de cada
uno a mayúscula y el resto a minúscula*/

SELECT INITCAP(first_name), INITCAP(last_name)
FROM employees;

/*17. Mostrar la primera palabra de cada job_title*/
/*Don't Know*/
SELECT job_title,SUBSTR(job_title,1,INSTR(job_title,' ')-1) "Primeira palavra"
FROM JOBS; /* SUBSTR = Obter uma sub-string de um campo, indicando onde ela */
           /*deve começar e terminar*/
           /*INSTR = encontra s posição de um elemento dentro de uma string*/
           
/*18. Mostrar la longitud de first_name de los empelados si el last_name 
contiene el carácter 'b' depúes de la 3 posición*/

SELECT first_name,last_name
FROM employees
WHERE INSTR(last_name,'b')>3;

/*19. Mostrar first_name en mayúsculas,last_name en minúsculas para los empleados
cuya primera letra de first_name sea distinta de la primera letra de last_name*/
SELECT UPPER(fist_name),LOWER(last_name)
FROM employees
WHERE SUBSTR(first_name,1,1) <> SUBSTR(last_name,1,1);/*3 camp é a qntdd de caracteres */

/*20. Mostrar datos de los empleados que han ingresado este año*/
SELECT * 
FROM employees
WHERE TO_CHAR(hire_date,'YYYY') = '2008';--TO_CHAR(SYSDATE,'YYYY');

/*21.Mostrar el numero de dias entre las fecha actual y el 1º de enero de 2011*/
SELECT FLOOR(SYSDATE - TO_DATE('01/01/2011')) FROM DUAL --FLOOR é pra aredondar