CREATE OR REPLACE PROCEDURE insert_tb_usuario(
    p_id_usuario IN NUMBER,
    p_email_usuario IN VARCHAR2,
    p_senha_usuario IN VARCHAR2,
    p_cnpj_usuario IN VARCHAR2,
    p_cep_usuario IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_usuario (
        id_usuario,
        email_usuario,
        senha_usuario,
        cnpj_usuario,
        cep_usuario
    ) VALUES (
        p_id_usuario,
        p_email_usuario,
        p_senha_usuario,
        p_cnpj_usuario,
        p_cep_usuario
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_usuario(
    p_id_usuario IN NUMBER,
    p_email_usuario IN VARCHAR2,
    p_senha_usuario IN VARCHAR2,
    p_cnpj_usuario IN VARCHAR2,
    p_cep_usuario IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_usuario
    SET
        email_usuario = p_email_usuario,
        senha_usuario = p_senha_usuario,
        cnpj_usuario = p_cnpj_usuario,
        cep_usuario = p_cep_usuario
    WHERE id_usuario = p_id_usuario;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE delete_tb_usuario(p_id_usuario IN NUMBER)
IS
BEGIN
    DELETE FROM tb_usuario WHERE id_usuario = p_id_usuario;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE insert_tb_endereco(
    p_id_endereco IN NUMBER,
    p_id_usuario IN NUMBER,
    p_logradouro IN VARCHAR2,
    p_numero_endereco IN VARCHAR2,
    p_cep_endereco IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_endereco (
        id_endereco,
        id_usuario,
        logradouro,
        numero_endereco,
        cep_endereco
    ) VALUES (
        p_id_endereco,
        p_id_usuario,
        p_logradouro,
        p_numero_endereco,
        p_cep_endereco
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_endereco(
    p_id_endereco IN NUMBER,
    p_id_usuario IN NUMBER,
    p_logradouro IN VARCHAR2,
    p_numero_endereco IN VARCHAR2,
    p_cep_endereco IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_endereco
    SET
        id_usuario = p_id_usuario,
        logradouro = p_logradouro,
        numero_endereco = p_numero_endereco,
        cep_endereco = p_cep_endereco
    WHERE id_endereco = p_id_endereco;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE delete_tb_endereco(p_id_endereco IN NUMBER)
IS
BEGIN
    DELETE FROM tb_endereco WHERE id_endereco = p_id_endereco;
    COMMIT;
END;




CREATE OR REPLACE PROCEDURE insert_tb_pedido(
    p_id_pedido IN NUMBER,
    p_id_usuario IN NUMBER,
    p_nome_pedido IN VARCHAR2,
    p_desc_pedido IN VARCHAR2,
    p_data_pedido IN DATE,
    p_preco_pedido IN VARCHAR2,
    p_pedido_aceito IN CHAR
)
IS
BEGIN
    INSERT INTO tb_pedido (
        id_pedido,
        id_usuario,
        nome_pedido,
        desc_pedido,
        data_pedido,
        preco_pedido,
        pedido_aceito
    ) VALUES (
        p_id_pedido,
        p_id_usuario,
        p_nome_pedido,
        p_desc_pedido,
        p_data_pedido,
        p_preco_pedido,
        p_pedido_aceito
    );
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE update_tb_pedido(
    p_id_pedido IN NUMBER,
    p_id_usuario IN NUMBER,
    p_nome_pedido IN VARCHAR2,
    p_desc_pedido IN VARCHAR2,
    p_data_pedido IN DATE,
    p_preco_pedido IN VARCHAR2,
    p_pedido_aceito IN CHAR
)
IS
BEGIN
    UPDATE tb_pedido
    SET
        id_usuario = p_id_usuario,
        nome_pedido = p_nome_pedido,
        desc_pedido = p_desc_pedido,
        data_pedido = p_data_pedido,
        preco_pedido = p_preco_pedido,
        pedido_aceito = p_pedido_aceito
    WHERE id_pedido = p_id_pedido;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE delete_tb_pedido(p_id_pedido IN NUMBER)
IS
BEGIN
    DELETE FROM tb_pedido WHERE id_pedido = p_id_pedido;
    COMMIT;
END;



CREATE OR REPLACE PROCEDURE insert_tb_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_usuario IN NUMBER,
    p_id_produto IN NUMBER,
    p_item_compra IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_itemdecompra (
        id_compra,
        id_usuario,
        id_produto,
        item_compra
    ) VALUES (
        p_id_compra,
        p_id_usuario,
        p_id_produto,
        p_item_compra
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_usuario IN NUMBER,
    p_id_produto IN NUMBER,
    p_item_compra IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_itemdecompra
    SET
        item_compra = p_item_compra
    WHERE id_compra = p_id_compra
        AND id_usuario = p_id_usuario
        AND id_produto = p_id_produto;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE delete_tb_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_usuario IN NUMBER,
    p_id_produto IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_itemdecompra
    WHERE id_compra = p_id_compra
        AND id_usuario = p_id_usuario
        AND id_produto = p_id_produto;
    COMMIT;
END;



CREATE OR REPLACE PROCEDURE insert_tb_produto(
    p_id_produto IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_nome_produto IN VARCHAR2,
    p_desc_produto IN VARCHAR2,
    p_preco_produto IN VARCHAR2,
    p_disp_produto IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_produto (
        id_produto,
        id_fornecedor,
        nome_produto,
        desc_produto,
        preco_produto,
        disp_produto
    ) VALUES (
        p_id_produto,
        p_id_fornecedor,
        p_nome_produto,
        p_desc_produto,
        p_preco_produto,
        p_disp_produto
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_produto(
    p_id_produto IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_nome_produto IN VARCHAR2,
    p_desc_produto IN VARCHAR2,
    p_preco_produto IN VARCHAR2,
    p_disp_produto IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_produto
    SET
        id_fornecedor = p_id_fornecedor,
        nome_produto = p_nome_produto,
        desc_produto = p_desc_produto,
        preco_produto = p_preco_produto,
        disp_produto = p_disp_produto
    WHERE id_produto = p_id_produto;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE delete_tb_produto(
    p_id_produto IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_produto
    WHERE id_produto = p_id_produto;
    COMMIT;
END;





CREATE OR REPLACE PROCEDURE insert_tb_marca(
    p_id_marca IN NUMBER,
    p_id_produto IN NUMBER,
    p_marca_produto IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_marca (
        id_marca,
        id_produto,
        marca_produto
    ) VALUES (
        p_id_marca,
        p_id_produto,
        p_marca_produto
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_marca(
    p_id_marca IN NUMBER,
    p_id_produto IN NUMBER,
    p_marca_produto IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_marca
    SET
        id_produto = p_id_produto,
        marca_produto = p_marca_produto
    WHERE id_marca = p_id_marca;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE delete_tb_marca(
    p_id_marca IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_marca
    WHERE id_marca = p_id_marca;
    COMMIT;
END;




CREATE OR REPLACE PROCEDURE insert_tb_modelo(
    p_id_modelo IN NUMBER,
    p_id_produto IN NUMBER,
    p_nome_modelo IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_modelo (
        id_modelo,
        id_produto,
        nome_modelo
    ) VALUES (
        p_id_modelo,
        p_id_produto,
        p_nome_modelo
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_modelo(
    p_id_modelo IN NUMBER,
    p_id_produto IN NUMBER,
    p_nome_modelo IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_modelo
    SET
        id_produto = p_id_produto,
        nome_modelo = p_nome_modelo
    WHERE id_modelo = p_id_modelo;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE delete_tb_modelo(
    p_id_modelo IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_modelo
    WHERE id_modelo = p_id_modelo;
    COMMIT;
END;



CREATE OR REPLACE PROCEDURE insert_tb_fornecedor(
    p_id_fornecedor IN NUMBER,
    p_nome_fornecedor IN VARCHAR2,
    p_email_fornecedor IN VARCHAR2,
    p_senha_fornecedor IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_fornecedor (
        id_fornecedor,
        nome_fornecedor,
        email_fornecedor,
        senha_fornecedor
    ) VALUES (
        p_id_fornecedor,
        p_nome_fornecedor,
        p_email_fornecedor,
        p_senha_fornecedor
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_fornecedor(
    p_id_fornecedor IN NUMBER,
    p_nome_fornecedor IN VARCHAR2,
    p_email_fornecedor IN VARCHAR2,
    p_senha_fornecedor IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_fornecedor
    SET
        nome_fornecedor = p_nome_fornecedor,
        email_fornecedor = p_email_fornecedor,
        senha_fornecedor = p_senha_fornecedor
    WHERE id_fornecedor = p_id_fornecedor;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE delete_tb_fornecedor(
    p_id_fornecedor IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_fornecedor
    WHERE id_fornecedor = p_id_fornecedor;
    COMMIT;
END;




CREATE OR REPLACE PROCEDURE insert_tb_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_logradouro_fornecedor IN VARCHAR2,
    p_numero_fornecedor IN VARCHAR2,
    p_cep_fornecedor IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tb_endereco_fornecedor (
        id_end_fornecedor,
        id_fornecedor,
        logradouro_fornecedor,
        numero_fornecedor,
        cep_fornecedor
    ) VALUES (
        p_id_end_fornecedor,
        p_id_fornecedor,
        p_logradouro_fornecedor,
        p_numero_fornecedor,
        p_cep_fornecedor
    );
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE update_tb_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_logradouro_fornecedor IN VARCHAR2,
    p_numero_fornecedor IN VARCHAR2,
    p_cep_fornecedor IN VARCHAR2
)
IS
BEGIN
    UPDATE tb_endereco_fornecedor
    SET
        id_fornecedor = p_id_fornecedor,
        logradouro_fornecedor = p_logradouro_fornecedor,
        numero_fornecedor = p_numero_fornecedor,
        cep_fornecedor = p_cep_fornecedor
    WHERE id_end_fornecedor = p_id_end_fornecedor;
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE delete_tb_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER
)
IS
BEGIN
    DELETE FROM tb_endereco_fornecedor
    WHERE id_end_fornecedor = p_id_end_fornecedor;
    COMMIT;
END;













