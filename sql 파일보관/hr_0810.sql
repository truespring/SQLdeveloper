CREATE SEQUENCE seq_board --������ �����
START WITH 21; -- ���� �ֱ�

SELECT seq_board.nextval from dual; -- ������ Ȯ��(���������� ������ ��ų �� �ִ�.)

DROP SEQUENCE seq_board;

SELECT * FROM t_board ORDER BY i_board DESC;

UPDATE t_board
SET title='update', ctnt='update', i_student=2
WHERE i_board=1;

commit;