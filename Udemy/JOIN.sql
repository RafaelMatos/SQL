select region_name
FROM regions NATURAL JOIN countries
WHERE country_name = 'Canada';

SELECT EMPLOYEE_ID, job_ID,DEPARTMENT_ID,EMP.LAST_NAME,EMP.HIRE_DATE,jh.END_DATE
FROM JOB_HISTORY jH NATURAL JOIN  EMPLOYEES emp;

SELECT d.DEPARTMENT_NAME,L.CITY,c.COUNTRY_NAME,R.region_name
FROM DEPARTMENTS d
NATURAL JOIN LOCATIONS L
NATURAL JOIN COUNTRIES c
NATURAL JOIN REGIONs R;

DESC DEPARTMENTS;

SELECT d.DEPARTMENT_NAME,L.CITY,c.COUNTRY_NAME,R.region_name
FROM DEPARTMENTS d
join locations l on (d.LOCATION_ID = l.LOCATION_ID)
join countries c on (l.COUNTRY_ID = c.COUNTRY_ID)
join regions r on (c.REGION_ID = r.region_id);

SELECT d.DEPARTMENT_NAME,L.CITY,c.COUNTRY_NAME,R.region_name
FROM DEPARTMENTS d
JOIN locations l USING(location_id)
JOIN countries c USING(COUNTRY_ID)
JOIN REGIONS r using (region_id);

SELECT d.DEPARTMENT_ID,l.city,d.DEPARTMENT_NAME
FROM DEPARTMENTS d
JOIN LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID and d.DEPARTMENT_NAME like 'P%'; 

