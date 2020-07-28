CREATE TABLE t_student (
    id_student number,
    nm varchar2(15) not null,
    age number(3) not null,
    primary key(id_student) --이 방법은 프라이머리키를 등록할 수 있다
);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(3,'석규환',30);

UPDATE t_student
SET nm='정혜선'
, age=29
WHERE id_student = 3;

DELETE FROM t_student
WHERE id_student = 3;

INSERT INTO t_student
(id_student, nm, age)
VALUES
(1,'석규환',30);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(2,'이나경',31);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(3,'정혜선',29);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(4,'석유빈',24);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(5,'황병진',29);

SELECT id_student, nm, age as student_age
FROM t_student
WHERE (id_student < 3 AND age >= 30) OR id_student = 5
ORDER BY id_student ASC;

DELETE FROM t_student
WHERE id_student in(1,2,3,4,5);

SELECT 1 + 1 FROM dual;

SELECT 1 as dd, 'Jone Doe' as nm, id_student FROM t_student;

SELECT id_student, nm, age as student_age
FROM t_student
WHERE nm LIKE '석%';

SELECT * 
FROM employees
WHERE phone_number LIKE '%.423.%';