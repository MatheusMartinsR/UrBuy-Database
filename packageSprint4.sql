CREATE OR REPLACE PACKAGE meu_pacote AS
    
    PROCEDURE relatorio_pedidos_aceitos(
        p_id_fornecedor IN tb_fornecedor.id_fornecedor%TYPE
    );
    
    
    PROCEDURE calcular_total_itens_comprados(
        p_id_usuario IN tb_usuario.id_usuario%TYPE,
        p_total_itens OUT NUMBER
    );
    
    
    FUNCTION calcular_valor_total_compras(p_id_usuario IN NUMBER) RETURN NUMBER;
    
    
    FUNCTION calcular_preco_medio_produtos(p_id_fornecedor IN NUMBER) RETURN NUMBER;
END meu_pacote;


CREATE OR REPLACE PACKAGE BODY meu_pacote AS
    
    PROCEDURE relatorio_pedidos_aceitos(
        p_id_fornecedor IN tb_fornecedor.id_fornecedor%TYPE
    )
    IS
        CURSOR cur_pedidos IS
            SELECT p.id_pedido, p.nome_pedido, p.desc_pedido, p.data_pedido, p.preco_pedido
            FROM tb_pedido p
            WHERE p.pedido_aceito = 'Y' 
              AND EXISTS (
                  SELECT 1
                  FROM tb_itempedido ip
                  JOIN tb_produto pr ON ip.id_pedido = p.id_pedido AND pr.id_fornecedor = p_id_fornecedor
              )
            ORDER BY p.data_pedido DESC;
    BEGIN
        FOR pedidos IN cur_pedidos LOOP
            DBMS_OUTPUT.PUT_LINE('ID Pedido: ' || pedidos.id_pedido);
            DBMS_OUTPUT.PUT_LINE('Nome Pedido: ' || pedidos.nome_pedido);
            DBMS_OUTPUT.PUT_LINE('Descrição: ' || pedidos.desc_pedido);
            DBMS_OUTPUT.PUT_LINE('Data Pedido: ' || TO_CHAR(pedidos.data_pedido, 'DD-MON-YYYY'));
            DBMS_OUTPUT.PUT_LINE('Preço Pedido: ' || pedidos.preco_pedido);
            DBMS_OUTPUT.PUT_LINE('--------------------------');
        END LOOP;

        IF NOT cur_pedidos%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Nenhum pedido aceito encontrado para este fornecedor.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Nenhum pedido aceito encontrado para este fornecedor.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao gerar relatório de pedidos aceitos: ' || SQLERRM);
    END relatorio_pedidos_aceitos;
    
    
    PROCEDURE calcular_total_itens_comprados(
        p_id_usuario IN tb_usuario.id_usuario%TYPE,
        p_total_itens OUT NUMBER
    )
    IS
    BEGIN
        SELECT COUNT(*)
        INTO p_total_itens
        FROM tb_itemdecompra
        WHERE id_usuario = p_id_usuario;

        DBMS_OUTPUT.PUT_LINE('Total de Itens Comprados: ' || p_total_itens);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_total_itens := 0; 
            DBMS_OUTPUT.PUT_LINE('Nenhum item comprado encontrado para este usuário.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao calcular total de itens comprados: ' || SQLERRM);
    END calcular_total_itens_comprados;
    
  
    FUNCTION calcular_valor_total_compras(p_id_usuario IN NUMBER) RETURN NUMBER
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
    END calcular_valor_total_compras;
    
    
    FUNCTION calcular_preco_medio_produtos(p_id_fornecedor IN NUMBER) RETURN NUMBER
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
    END calcular_preco_medio_produtos;
END meu_pacote;

