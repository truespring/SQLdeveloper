SELECT job_id, manager_id, max(salary), min(salary), ceil(avg(salary)), count(*), sum(salary)
FROM employees
HAVING count(*) >= 5 -- �׷� �Լ� ������� ���� ������ �ɰ� ���� �� ����Ѵ�(�ɼ�)
GROUP BY job_id, manager_id; -- �׷� �Լ�

SELECT 
JOB_ID
, DECODE(JOB_ID, 'IT_PROG','���α׷���' -- switch case / if else if �� ����ϴ�
              , 'FI_ACCOUNT', '������'
              , 'AD_VP', '����' , ' ') as ddd
FROM employees;

SELECT 
JOB_ID 
,DECODE(JOB_ID, 'IT_PROG','���α׷���'
	        , 'FI_ACCOUNT', '������'
                    , 'AD_VP', '����', 'ffff') as decode
,CASE JOB_ID WHEN 'IT_PROG' THEN 'asd'
                  WHEN 'FI_ACCOUNT' THEN '������'
                  WHEN 'AD_VP' THEN '����'
                  ELSE 'ffff' END as case
FROM employees; -- ���� ����� ���� �� �ִ�

SELECT nvl(JOB_ID,'') as oo FROM employees;

SELECT * FROM employees;

SELECT employee_id, nvl(commission_pct, 0), commission_pct FROM employees;

SELECT distinct job_id, manager_id FROM employees ORDER BY job_id, manager_id;

SELECT job_id, max(salary), min(salary), avg(salary), count(*), sum(salary)
FROM employees
GROUP BY job_id; -- �׷캰�� SELECT ���� ���� ���� ��

SELECT salary
, CASE WHEN salary >= 20000 THEN salary * 3
       WHEN salary >= 10000 THEN salary * 2
       ELSE salary - 1000 END as calcSalary
FROM employees;

SELECT distinct lpad(phone_number, 3) FROM employees;

SELECT lpad(phone_number, 3), max(salary), min(salary)
FROM employees
GROUP BY lpad(phone_number, 3)
HAVING max(salary) >= 10000;

SELECT to_char(sysdate, 'mm-dd-yyyy hh:MI:ss') as current_time FROM dual;

CREATE TABLE t_hobby(
i_hobby number primary key,
nm varchar2(30) not null
);

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(1, '����');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(2, '���ǰ���');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(3, '��ȭ����');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(4, '����');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(5, '��å');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(6, '���α׷���');

commit;

SELECT * FROM t_hobby;

CREATE TABLE t_student_hobby (
 i_student number,
 i_hobby number,
 r_dt date default sysdate,
 PRIMARY key(i_student, i_hobby),
 foreign key(i_student) REFERENCES t_student(id_student),
 foreign key(i_hobby) REFERENCES t_hobby(i_hobby)
);

--drop TABLE t_student_hobby;

CREATE TABLE t_student_hobby(
i_student number,
i_hobby number,
r_dt date default sysdate, --���ڵ尡 ��ư��� �����Ͻ������ֽ�
                             --insert�ÿ� r_dt�� �Ű澲���� 
PRIMARY key(i_student, i_hobby),  --2������ pk�ֱ�
foreign key(i_student) REFERENCES t_student(id_student) on DELETE CASCADE,
foreign key(i_hobby) REFERENCES t_hobby(i_hobby)

insert into t_student_hobby(i_student,i_hobby) values(1,2);

insert into t_student_hobby(i_student,i_hobby) values(1,4);

insert into t_student_hobby(i_student,i_hobby) values(2,1);

insert into t_student_hobby(i_student,i_hobby) values(3,5);

insert into t_student_hobby(i_student,i_hobby) values(3,3);

insert into t_student_hobby(i_student,i_hobby) values(3,1);