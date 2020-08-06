CREATE OR REPLACE FUNCTION fn_GET_AGE(v_birth_date CHAR)
RETURN number
IS
    v_current_year char(4);
    v_birth_year char(4);
    v_age number;
BEGIN
    SELECT TO_CHAR(sysdate, 'YYYY'), SUBSTR(v_birth_date, 1, 4)
    INTO v_current_year, v_birth_year
    FROM DUAL;
    v_age := to_number(v_current_year) - to_number(v_birth_year) + 1;
    RETURN v_age;
END;

