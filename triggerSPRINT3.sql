CREATE TABLE historico_atualizacao_preco (
    id_historico       NUMBER GENERATED ALWAYS AS IDENTITY,
    codigo_erro        NUMBER,
    nome_erro          VARCHAR2(100),
    data_ocorrencia    DATE,
    usuario_logado     VARCHAR2(100),
    CONSTRAINT pk_historico PRIMARY KEY (id_historico)
);

CREATE OR REPLACE TRIGGER trg_monitorar_atualizacao_preco
AFTER UPDATE OF preco_produto ON tb_produto
FOR EACH ROW
DECLARE
    v_codigo_erro   NUMBER;
    v_nome_erro     VARCHAR2(100);
BEGIN
    
    v_codigo_erro := SQLCODE;
    v_nome_erro := SQLERRM;

    
    INSERT INTO historico_atualizacao_preco (
        codigo_erro,
        nome_erro,
        data_ocorrencia,
        usuario_logado
    ) VALUES (
        v_codigo_erro,
        v_nome_erro,
        SYSDATE,
        USER
    );
EXCEPTION
    WHEN OTHERS THEN
        NULL; 
END;


