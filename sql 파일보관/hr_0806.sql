CREATE OR REPLACE PROCEDURE proc_INSERT_ORDER1 -- ���� ����ų� �ִٸ� ����ڴ�
(
p_o_no IN t_order1.o_no%TYPE, -- %type�� �ش� �÷��� Ÿ���� �������ڴ�
p_cus_no IN t_order1.cus_no%TYPE,
p_o_price IN t_order1.o_price%TYPE
)
IS -- �߰�ȣ ����
BEGIN
INSERT INTO t_order1(o_no, cus_no, o_date, o_price) -- �Ϲ����� INSERT���� ����
VALUES (p_o_no, p_cus_no, sysdate, p_o_price);
commit;
END; -- �߰�ȣ ��

EXEC proc_INSERT_order1(6, 5, 10200);
