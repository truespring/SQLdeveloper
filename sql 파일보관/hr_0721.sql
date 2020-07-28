SELECT 
B.id_student, B.nm as student_nm, A.i_hobby, c.nm as hobby_nm
FROM t_student_hobby A -- as
INNER JOIN t_student B
ON A.i_student = B.id_student
INNER JOIN t_hobby C
ON a.i_hobby = c.i_hobby
ORDER BY b.nm;

CREATE TABLE t_board(
 i_board number primary key,
 title varchar2(100) not null,
 ctnt varchar2(2000) not null,
 i_student number not null,
 foreign key (i_student) references t_student(id_student)
);

comment on column t_board.i_student IS '작성자'; -- 코멘트 생성

INSERT INTO t_board(i_board, title, ctnt, i_student) VALUES (1, '안녕', '11111111', 3);
INSERT INTO t_board(i_board, title, ctnt, i_student) VALUES (2, '하세요', '2222222', 3);
INSERT INTO t_board(i_board, title, ctnt, i_student) VALUES (3, '구독과', '333333', 1);
INSERT INTO t_board(i_board, title, ctnt, i_student) VALUES (4, '좋아요', '444444', 2);
INSERT INTO t_board(i_board, title, ctnt, i_student) VALUES (5, '알람설정', '555555555', 3);

commit;

SELECT * FROM t_board;

CREATE TABLE t_like(
 i_board number,
 i_student number,
 primary key(i_board, i_student),
 foreign key(i_board) references t_board(i_board),
 foreign key(i_student) references t_student(id_student)
);

commit;
 
SELECT * FROM t_like;

INSERT INTO t_like(i_board, i_student) VALUES (1, 1);
INSERT INTO t_like(i_board, i_student) VALUES (1, 2);
INSERT INTO t_like(i_board, i_student) VALUES (1, 3);
INSERT INTO t_like(i_board, i_student) VALUES (2, 1);

SELECT i_board, count(i_board) as like_cnt
FROM t_like
GROUP BY i_board;

SELECT *
FROM t_like A
INNER JOIN t_board B
ON a.i_board = b.i_board;

SELECT *
FROM t_like A
INNER JOIN t_student B
ON a.i_student = b.id_student;

SELECT A.*, b.*, nvl(b.like_cnt, 0) as like_cnt
FROM t_board A
LEFT JOIN (
 SELECT i_board, count(i_board) as like_cnt
 FROM t_like
 group by i_board
 )B
ON a.i_board = b.i_board
WHERE b.i_board is null
ORDER BY nvl(B.like_cnt) desc;

SELECT *
FROM t_like A
INNER JOIN t_board B
ON a.i_board = b.i_board
INNER JOIN t_student C
ON b.i_student = c.id_student;