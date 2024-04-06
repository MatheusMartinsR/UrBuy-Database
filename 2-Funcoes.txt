CREATE OR REPLACE FUNCTION calcular_valor_total_compras(p_id_usuario IN NUMBER)
RETURN NUMBER
IS
    v_total NUMBER := 0;
BEGIN
    SELECT SUM(p.preco_produto)
    INTO v_total
    FROM tb_itemdecompra i
    JOIN tb_produto p ON i.id_produto = p.id_produto
    WHERE i.id_usuario = p_id_usuario;

    RETURN v_total;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; 
    WHEN OTHERS THEN
        RETURN NULL; 
END;

CREATE OR REPLACE FUNCTION calcular_preco_medio_produtos(p_id_fornecedor IN NUMBER)
RETURN NUMBER
IS
    v_preco_medio NUMBER := 0;
BEGIN
    SELECT AVG(preco_produto)
    INTO v_preco_medio
    FROM tb_produto
    WHERE id_fornecedor = p_id_fornecedor;

    RETURN v_preco_medio;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; 
    WHEN OTHERS THEN
        RETURN NULL; 
END;



