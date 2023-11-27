DECLARE
    CURSOR c_consulta IS
        SELECT
            u.id_usuario,
            u.email_usuario,
            p.nome_produto,
            i.item_compra
        FROM
            tb_usuario u
            JOIN tb_itemdecompra i ON u.id_usuario = i.id_usuario
            JOIN tb_produto p ON i.id_produto = p.id_produto;
    
    v_id_usuario tb_usuario.id_usuario%TYPE;
    v_email_usuario tb_usuario.email_usuario%TYPE;
    v_nome_produto tb_produto.nome_produto%TYPE;
    v_item_compra tb_itemdecompra.item_compra%TYPE;
BEGIN
    OPEN c_consulta;
    LOOP
        FETCH c_consulta INTO v_id_usuario, v_email_usuario, v_nome_produto, v_item_compra;
        EXIT WHEN c_consulta%NOTFOUND;

        -- Aqui você pode realizar operações ou exibir os resultados conforme necessário
        DBMS_OUTPUT.PUT_LINE('ID Usuário: ' || v_id_usuario);
        DBMS_OUTPUT.PUT_LINE('Email Usuário: ' || v_email_usuario);
        DBMS_OUTPUT.PUT_LINE('Nome Produto: ' || v_nome_produto);
        DBMS_OUTPUT.PUT_LINE('Item Compra: ' || v_item_compra);
        DBMS_OUTPUT.PUT_LINE('-----------------------------');
    END LOOP;
    CLOSE c_consulta;
END;

