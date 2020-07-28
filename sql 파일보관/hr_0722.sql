DROP TABLE t_student2;

CREATE TABLE t_student2(
 i_student number,
 nm varchar(10) unique not null,
 age number(3) not null,
 primary key(i_student)
);

INSERT INTO t_student2(i_student, nm, age) VALUES (1, 'Lee', 20);

DROP INDEX idx_student_age;

CREATE INDEX idx_student_age
ON T_STUDENT(age);

SELECT * FROM t_student;

DROP VIEW view_boardlike_cnt;

CREATE VIEW view_boardlike_cnt
AS
SELECT i_board, count(i_board)as like_cnt
 FROM t_like
 group BY i_board;
 
SELECT * FROM view_boardlike_cnt;

SELECT * FROM USER_TABLES;
SELECT * FROM user_indexes;
SELECT * FROM user_views;

CREATE TABLE t_student3(
 i_student number,
 nm varchar(20) not null,
 age number(3) not null,
 primary key(i_student)
);

INSERT INTO t_student3(i_student, nm, age) VALUES (1, '석규환', 30);
INSERT INTO t_student3(i_student, nm, age) VALUES (2, '이나경', 31);
INSERT INTO t_student3(i_student, nm, age) VALUES (3, '석유빈', 24);
INSERT INTO t_student3(i_student, nm, age) VALUES (4, '황병진', 29);
INSERT INTO t_student3(i_student, nm, age) VALUES (5, '정혜선', 29);
INSERT INTO t_student3(i_student, nm, age) VALUES (6, '사공수기', 28);

SELECT * FROM t_student3;

SELECT i_student, nm, age
FROM t_student3
WHERE nm LIKE '석%' OR age > 29
ORDER BY age DESC;

SELECT first_name
FROM employees
WHERE first_name like 'W%%m';