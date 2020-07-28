CREATE TABLE t_student (
    id_student number,
    nm varchar2(15) not null,
    age number(3) not null,
    primary key(id_student) --�� ����� �����̸Ӹ�Ű�� ����� �� �ִ�
);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(3,'����ȯ',30);

UPDATE t_student
SET nm='������'
, age=29
WHERE id_student = 3;

DELETE FROM t_student
WHERE id_student = 3;

INSERT INTO t_student
(id_student, nm, age)
VALUES
(1,'����ȯ',30);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(2,'�̳���',31);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(3,'������',29);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(4,'������',24);

INSERT INTO t_student
(id_student, nm, age)
VALUES
(5,'Ȳ����',29);

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
WHERE nm LIKE '��%';

SELECT * 
FROM employees
WHERE phone_number LIKE '%.423.%';