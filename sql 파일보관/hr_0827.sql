SELECT A.i_board, A.title, A.hits, A.i_user, A.r_dt, B.nm, C.cmt_cnt
FROM t_board5 A 
INNER JOIN t_user B 
ON A.i_user = B.i_user 
LEFT JOIN (		   
 SELECT i_board, count(i_board) as cmt_cnt
 FROM t_board5_cmt
 group by i_board
 )C
 ON A.i_board = C.i_board
ORDER BY A.i_board DESC; -- 댓글 갯수 표현 완료

SELECT ceil(count(*) / 10) FROM t_board5;

SELECT CEIL(count(i_board) / 10) FROM t_board5;

SELECT * 
FROM (
    SELECT ROWNUM AS RNUM, A.*
    FROM t_board5 A
    WHERE ROWNUM <= 20
)
WHERE 1 <= RNUM;

SELECT A.* FROM 
(
    SELECT ROWNUM as RNUM, A.* FROM
    (
        SELECT * FROM t_board5
        ORDER BY i_board DESC
    ) A
    WHERE ROWNUM <= 30
) A
WHERE A.RNUM > 20;

SELECT A.* FROM 
 (SELECT ROWNUM as RNUM, A.* FROM 
 (SELECT A.i_board, A.title, A.hits, A.i_user, A.r_dt, B.nm, C.cmt_cnt 
 FROM t_board5 A INNER JOIN t_user B ON A.i_user = B.i_user 
 LEFT JOIN ( SELECT i_board, count(i_board) as cmt_cnt 
 FROM t_board5_cmt GROUP BY i_board)C ON A.i_board = C.i_board 
 ORDER BY A.i_board DESC) A 
 WHERE ROWNUM <= 20 ) A 
 WHERE A.RNUM > 0;