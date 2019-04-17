SELECT employee_id, job_id
FROM EMPLOYEES
UNION
SELECT employee_id,job_id
FROM job_history;

SELECT employee_id, job_id
FROM EMPLOYEES 
UNION ALL
SELECT employee_id,job_id
FROM job_history
order by EMPLOYEE_ID;

SELECT employee_id, job_id
FROM EMPLOYEES 
INTERSECT
SELECT employee_id,job_id
FROM job_history
order by EMPLOYEE_ID;

SELECT employee_id, job_id
FROM EMPLOYEES 
MINUS
SELECT employee_id,job_id
FROM job_history
order by EMPLOYEE_ID;

