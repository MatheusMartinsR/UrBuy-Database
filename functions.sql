CREATE OR REPLACE FUNCTION validar_email(p_email IN VARCHAR2) RETURN BOOLEAN IS
    v_pattern VARCHAR2(100) := '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,4}$';
BEGIN
    IF REGEXP_LIKE(p_email, v_pattern) THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END validar_email;


CREATE OR REPLACE FUNCTION validar_cep(p_cep IN VARCHAR2) RETURN BOOLEAN IS
    v_pattern VARCHAR2(100) := '^\d{5}-\d{3}$';
BEGIN
    IF REGEXP_LIKE(p_cep, v_pattern) THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END validar_cep;



