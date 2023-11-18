CREATE OR REPLACE FUNCTION validar_usuario(
    p_id_usuario IN NUMBER,
    p_email_usuario IN VARCHAR2,
    p_senha_usuario IN VARCHAR2,
    p_cnpj_usuario IN VARCHAR2,
    p_cep_usuario IN VARCHAR2
) RETURN BOOLEAN
IS
BEGIN
    IF p_id_usuario IS NULL OR p_id_usuario <= 0 THEN
        RETURN FALSE;
    END IF;
     IF p_email_usuario IS NULL OR LENGTH(p_email_usuario) > 255 THEN
        RETURN FALSE;
    END IF;
RETURN TRUE;
END;


CREATE OR REPLACE FUNCTION validar_pedido(
    p_id_pedido IN NUMBER,
    p_id_usuario IN NUMBER,
    p_nome_pedido IN VARCHAR2,
    p_desc_pedido IN VARCHAR2,
    p_data_pedido IN DATE,
    p_preco_pedido IN VARCHAR2,
    p_pedido_aceito IN CHAR
) RETURN BOOLEAN
IS
BEGIN
    IF p_id_pedido IS NULL OR p_id_pedido <= 0 THEN
        RETURN FALSE;
    END IF;
    IF p_id_usuario IS NULL OR p_id_usuario <= 0 THEN
        RETURN FALSE;
    END IF;
    RETURN TRUE; 
END;
