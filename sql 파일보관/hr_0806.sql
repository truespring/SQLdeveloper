CREATE OR REPLACE PROCEDURE proc_INSERT_ORDER1 -- 새로 만들거나 있다면 덮어쓰겠다
(
p_o_no IN t_order1.o_no%TYPE, -- %type는 해당 컬럼의 타입을 가져오겠다
p_cus_no IN t_order1.cus_no%TYPE,
p_o_price IN t_order1.o_price%TYPE
)
IS -- 중괄호 시작
BEGIN
INSERT INTO t_order1(o_no, cus_no, o_date, o_price) -- 일반적인 INSERT문과 같다
VALUES (p_o_no, p_cus_no, sysdate, p_o_price);
commit;
END; -- 중괄호 끝

EXEC proc_INSERT_order1(6, 5, 10200);
