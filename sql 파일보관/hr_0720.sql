SELECT job_id, manager_id, max(salary), min(salary), ceil(avg(salary)), count(*), sum(salary)
FROM employees
HAVING count(*) >= 5 -- 그룹 함수 결과물에 대해 조건을 걸고 싶을 때 사용한다(옵션)
GROUP BY job_id, manager_id; -- 그룹 함수

SELECT 
JOB_ID
, DECODE(JOB_ID, 'IT_PROG','프로그래머' -- switch case / if else if 와 비슷하다
              , 'FI_ACCOUNT', '금융업'
              , 'AD_VP', '뭐고' , ' ') as ddd
FROM employees;

SELECT 
JOB_ID 
,DECODE(JOB_ID, 'IT_PROG','프로그래머'
	        , 'FI_ACCOUNT', '금융업'
                    , 'AD_VP', '뭐고', 'ffff') as decode
,CASE JOB_ID WHEN 'IT_PROG' THEN 'asd'
                  WHEN 'FI_ACCOUNT' THEN '금융업'
                  WHEN 'AD_VP' THEN '뭐고'
                  ELSE 'ffff' END as case
FROM employees; -- 같은 결과를 가질 수 있다

SELECT nvl(JOB_ID,'') as oo FROM employees;

SELECT * FROM employees;

SELECT employee_id, nvl(commission_pct, 0), commission_pct FROM employees;

SELECT distinct job_id, manager_id FROM employees ORDER BY job_id, manager_id;

SELECT job_id, max(salary), min(salary), avg(salary), count(*), sum(salary)
FROM employees
GROUP BY job_id; -- 그룹별로 SELECT 값을 보고 싶을 때

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
(1, '독서');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(2, '음악감상');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(3, '영화감상');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(4, '게임');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(5, '산책');

INSERT INTO t_hobby
(i_hobby, nm)
VALUES
(6, '프로그래밍');

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
r_dt date default sysdate, --레코드가 들아갈때 현재일시정보주시
                             --insert시에 r_dt는 신경쓰지마 
PRIMARY key(i_student, i_hobby),  --2가지에 pk주기
foreign key(i_student) REFERENCES t_student(id_student) on DELETE CASCADE,
foreign key(i_hobby) REFERENCES t_hobby(i_hobby)

insert into t_student_hobby(i_student,i_hobby) values(1,2);

insert into t_student_hobby(i_student,i_hobby) values(1,4);

insert into t_student_hobby(i_student,i_hobby) values(2,1);

insert into t_student_hobby(i_student,i_hobby) values(3,5);

insert into t_student_hobby(i_student,i_hobby) values(3,3);

insert into t_student_hobby(i_student,i_hobby) values(3,1);