INSERT INTO t_board5 (i_board, title, ctnt, i_user, hits)
VALUES (1, 'ù��°', '���ۼ�', 20, 100);
INSERT INTO t_board5 (i_board, title, ctnt, i_user, hits)
VALUES (2,n'???', n'?', 20, 100);
INSERT INTO t_board5 (i_board, title, ctnt, i_user, hits)
VALUES (3, '����°', n'?', 20, 100);
INSERT INTO t_board5 (i_board, title, ctnt, i_user, hits)
VALUES (8,  n'?', n'?', 20, 100);

SELECT * FROM t_user;

SELECT * FROM t_board5;

commit;

CREATE SEQUENCE seq_board5 --������ �����
START WITH 9
nocache; -- ���� �ֱ�

DROP SEQUENCE seq_board5;

INSERT INTO t_board5 (i_board, title, ctnt, i_user)
VALUES (seq_board5.nextval, '11111', '222222', 20);