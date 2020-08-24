CREATE SEQUENCE seq_userloginhistory
nocache;

CREATE TABLE t_user_loginhistory(
 i_history number primary key,
 i_user number not null,
 ip_addr varchar2(15) not null,
 os varchar2(10) not null,
 browser varchar2(10) not null,
 r_dt date default sysdate,
 foreign key (i_user) references t_user(i_user)
);

SELECT * FROM t_user_loginhistory;
SELECT * FROM t_user;

DROP TABLE t_user_loginhistory;
DROP SEQUENCE seq_userloginhistory;

CREATE TABLE t_board5_like(
 i_user number,
 i_board number,
 r_dt date default sysdate,
 primary key(i_user, i_board),
 foreign key (i_user) references t_user(i_user),
 foreign key (i_board) references t_board5(i_board)
);

DROP TABLE t_like;

SELECT A.*, B.nm, DECODE(C.i_user, null, 0, 1) as yn_like -- 3항식과 같다
FROM t_board5 A

INNER JOIN t_user B
ON A.i_user = B.i_user

LEFT JOIN t_board5_like C
ON A.i_board = C.i_board
AND C.i_user = 26

WHERE A.i_board = 33;

INSERT INTO t_board5_like
(i_user, i_board)
VALUES
(27, 33);

commit;

SELECT * FROM t_board5_like;