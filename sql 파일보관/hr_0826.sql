CREATE TABLE t_board5_cmt (
 i_cmt number primary key,
 i_board number not null,
 i_user number not null,
 cmt nvarchar2(500) not null,
 r_dt date default sysdate,
 m_dt date default sysdate,
 foreign key (i_board) references t_board5(i_board),
 foreign key (i_user) references t_user(i_user)
);

SELECT * FROM t_board5_cmt;

delete from t_board5_cmt where i_cmt = 5;

commit;

CREATE SEQUENCE seq_board5_cmt
start with 0
minvalue 0 -- minvalue 의 기본값은 0 이기때문에 적지 않으면 에러가 발생
nocache;

DROP SEQUENCE seq_board5_cmt;

SELECT A.i_cmt, B.nm, A.cmt, A.r_dt, A.i_board
FROM t_board5_cmt A
INNER JOIN t_user B
ON A.i_user = B.i_user
ORDER BY i_cmt DESC;

SELECT count(*) FROM t_board5_cmt;

SELECT A.i_board, A.title, A.hits, A.i_user, A.r_dt, B.nm
FROM t_board5 A 
INNER JOIN t_user B 
ON A.i_user = B.i_user 
ORDER BY i_board DESC;

SELECT *
FROM t_board5 A
LEFT JOIN t_board5_cmt B
ON A.i_board = B.i_board;

SELECT count(*)
FROM t_board5_cmt
GROUP BY i_board;

SELECT A.i_board, b.cmt_cnt
FROM t_board5 A
LEFT JOIN (		   
 SELECT i_board, count(i_board) as cmt_cnt
 FROM t_board5_cmt
 group by i_board
 )B			    
ON a.i_board = b.i_board;