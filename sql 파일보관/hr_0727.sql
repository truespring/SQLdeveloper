CREATE TABLE t_student4(
 i_student varchar(10),
 nm varchar2(20),
 age number(3),
 primary key(i_student)
 );
 
INSERT INTO t_student4 (i_student, nm, age) VALUES (1, '����ȯ', 30);
INSERT INTO t_student4 (i_student, nm, age) VALUES (2, '��ȯ', 30);
INSERT INTO t_student4 (i_student, nm, age) VALUES (3, 'ȯ', 30);
INSERT INTO t_student4 (i_student, nm, age) VALUES (4, '��', 30);

SELECT i_student FROM t_student4;

SELECT * FROM t_student4;

UPDATE t_student4
SET nm='������'
, age=24
WHERE i_student = 4;

commit;

DELETE FROM t_student4
WHERE i_student = 2;

INSERT INTO t_student4 (i_student, nm, age) VALUES (2, '�ڸ���', 38);

CREATE INDEX idx_student_age
ON T_STUDENT(age); --���̺�� �÷���

CREATE VIEW view_boardlike_cnt --view�� �������̺�
AS
SELECT i_board, count(i_board)as like_cnt
FROM t_like
GROUP BY i_board;

SELECT * FROM view_boardlike_cnt;
SELECT * FROM user_indexes;

DROP INDEX idx_student_age;
DROP VIEW view_boardlike_cnt;

DROP TABLE t_student4;

CREATE TABLE t_student4(
 i_student varchar2(10),
 nm varchar(20),
 age number(3),
 primary key(i_student)
);

CREATE TABLE t_order1(
 o_no number(10),
 cus_no number(10),
 o_date date not null,
 o_price number(8, 1) default 0,
 primary key(o_no),
 foreign key(cus_no) references t_customer(cus_no)
);

CREATE TABLE t_customer(
 cus_no number(10),
 nm varchar2(10),
 primary key(cus_no)
);

INSERT INTO t_customer(cus_no, nm) VALUES (3, 'ȫ�浿');
INSERT INTO t_customer(cus_no, nm) VALUES (5, '�̼���');

INSERT INTO t_order1(o_no, cus_no, o_date, o_price) VALUES (1, 3, '17/07/04', 55000.0);
INSERT INTO t_order1(o_no, cus_no, o_date, o_price) VALUES (2, 5, '17/08/01', 70000.0);
INSERT INTO t_order1(o_no, cus_no, o_date, o_price) VALUES (3, 3, '17/07/06', 60000.0);

UPDATE t_order1 SET o_date = '20170704' WHERE o_no = 1;
UPDATE t_order1 SET o_date = '20170801' WHERE o_no = 2;
UPDATE t_order1 SET o_date = '20170706' WHERE o_no = 3;

UPDATE t_customer 
SET nm = '�庸��'
WHERE cus_no = 5;

SELECT * FROM t_order1;
SELECT * FROM t_customer;

SELECT *
FROM t_order1
WHERE cus_no = 3;

SELECT o_no, o_price
FROM t_order1;

DELETE FROM t_order1
WHERE o_no = 2;

SELECT * FROM user_tables;
SELECT * FROM user_indexes;
SELECT * FROM idx_customer_nm;

CREATE INDEX idx_customer_nm
ON t_customer(nm);

DROP INDEX idx_customer_nm;

SELECT a.o_no, a.o_date, a.o_price, b.nm
FROM t_order1 A
INNER JOIN t_customer B
ON a.cus_no = b.cus_no;

CREATE VIEW view_order_info --CREATE OR REPLACE VIEW view_order_info ������ ����� ������ ��ü�Ѵٴ� ������ ������ ���� �����̴�.
AS
SELECT a.o_no, a.o_date, a.o_price, b.nm
FROM t_order1 A
INNER JOIN t_customer B
ON a.cus_no = b.cus_no; --USING(cus_no); ������ �÷����� ���� �� ��� �����ϴ�.

SELECT * FROM view_order_info;

DROP VIEW view_order_info;