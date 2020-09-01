SELECT A.i_board, A.title, nvl(B.cnt, 0) as like_cnt
FROM t_board5 A
LEFT JOIN (
 SELECT i_board, count(i_board) as cnt FROM t_board5_like GROUP BY i_board
) B
ON A.i_board = B.i_board;

SELECT * FROM t_board5_like ORDER BY i_board;
SELECT i_board, count(i_board) FROM t_board5_like GROUP BY i_board;
SELECT distinct i_board FROM t_board5_like;