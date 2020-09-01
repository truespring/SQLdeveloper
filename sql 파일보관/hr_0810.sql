CREATE SEQUENCE seq_board --시퀀스 만들기
START WITH 21; -- 조건 주기

SELECT seq_board.nextval from dual; -- 시퀀스 확인(순차적으로 증감을 시킬 수 있다.)

DROP SEQUENCE seq_board;

SELECT * FROM t_board ORDER BY i_board DESC;

UPDATE t_board
SET title='update', ctnt='update', i_student=2
WHERE i_board=1;

commit;