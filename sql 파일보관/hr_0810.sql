CREATE SEQUENCE seq_board --������ �����
START WITH 20; -- ���� �ֱ�

SELECT seq_board.nextval from dual; -- ������ Ȯ��(���������� ������ ��ų �� �ִ�.)

DROP SEQUENCE seq_board;

SELECT * FROM t_board ORDER BY i_board DESC;