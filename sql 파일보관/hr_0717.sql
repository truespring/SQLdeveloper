SELECT max(salary), min(salary), trunc(ceil(avg(salary))), count(*) 
FROM employees
WHERE commission_pct is not null;

SELECT job_id, manager_id, max(salary) as asd, min(salary) as dsa, ceil(avg(salary)), count(*), sum(salary)
FROM employees
HAVING count(*) >= 5
GROUP BY job_id, manager_id;

SELECT 
JOB_ID
,DECODE(JOB_ID, 'IT_PROG','���α׷���'
              , 'FI_ACCOUNT', '������'
              , 'AD_VP', '����', 'ffff')
,CASE JOB_ID WHEN 'IT_PROG' THEN '���α׷���'
             WHEN 'FI_ACCOUNT' THEN '������'
             WHEN 'AD_VP' THEN '����'
             ELSE 'ffff' END
FROM employees;

SELECT salary
,CASE WHEN SALARY >= 10000 THEN SALARY*2 
      WHEN SALARY >= 20000 THEN SALARY*3
      ELSE SALARY END as calcSalary
FROM employees;