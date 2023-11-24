Insert, update e delete tb_usuario

CREATE OR REPLACE PROCEDURE inserir_usuario(
    p_id_usuario IN NUMBER,
    p_email_usuario IN VARCHAR2,
    p_senha_usuario IN VARCHAR2,
    p_cnpj_usuario IN VARCHAR2,
    p_cep_usuario IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
    VALUES (p_id_usuario, p_email_usuario, p_senha_usuario, p_cnpj_usuario, p_cep_usuario);
    COMMIT;
END inserir_usuario;

CREATE OR REPLACE PROCEDURE atualizar_usuario(
    p_id_usuario IN NUMBER,
    p_email_usuario IN VARCHAR2,
    p_senha_usuario IN VARCHAR2,
    p_cnpj_usuario IN VARCHAR2,
    p_cep_usuario IN VARCHAR2
) AS
BEGIN
    UPDATE tb_usuario
    SET email_usuario = p_email_usuario,
        senha_usuario = p_senha_usuario,
        cnpj_usuario = p_cnpj_usuario,
        cep_usuario = p_cep_usuario
    WHERE id_usuario = p_id_usuario;
    COMMIT;
END atualizar_usuario;

CREATE OR REPLACE PROCEDURE excluir_usuario(p_id_usuario IN NUMBER) AS
BEGIN
    DELETE FROM tb_usuario WHERE id_usuario = p_id_usuario;
    COMMIT;
END excluir_usuario;


Insert, update e delete tb_pedido


CREATE OR REPLACE PROCEDURE inserir_pedido(
    p_id_pedido IN NUMBER,
    p_id_usuario IN NUMBER,
    p_nome_pedido IN VARCHAR2,
    p_desc_pedido IN VARCHAR2,
    p_data_pedido IN DATE,
    p_preco_pedido IN VARCHAR2,
    p_pedido_aceito IN CHAR
) AS
BEGIN
    INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
    VALUES (p_id_pedido, p_id_usuario, p_nome_pedido, p_desc_pedido, p_data_pedido, p_preco_pedido, p_pedido_aceito);
    COMMIT;
END inserir_pedido;



CREATE OR REPLACE PROCEDURE atualizar_pedido(
    p_id_pedido IN NUMBER,
    p_nome_pedido IN VARCHAR2,
    p_desc_pedido IN VARCHAR2,
    p_preco_pedido IN VARCHAR2,
    p_pedido_aceito IN CHAR
) AS
BEGIN
    UPDATE tb_pedido
    SET nome_pedido = p_nome_pedido,
        desc_pedido = p_desc_pedido,
        preco_pedido = p_preco_pedido,
        pedido_aceito = p_pedido_aceito
    WHERE id_pedido = p_id_pedido;
    COMMIT;
END atualizar_pedido;



CREATE OR REPLACE PROCEDURE excluir_pedido(p_id_pedido IN NUMBER) AS
BEGIN
    DELETE FROM tb_pedido WHERE id_pedido = p_id_pedido;
    COMMIT;
END excluir_pedido;



Insert, update e delete tb_itemdecompra

CREATE OR REPLACE PROCEDURE inserir_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_produto IN NUMBER,
    p_id_usuario IN NUMBER,
    p_item_compra IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_itemdecompra (id_compra, id_produto, id_usuario, item_compra)
    VALUES (p_id_compra, p_id_produto, p_id_usuario, p_item_compra);
    COMMIT;
END inserir_itemdecompra;



CREATE OR REPLACE PROCEDURE atualizar_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_produto IN NUMBER,
    p_id_usuario IN NUMBER,
    p_item_compra IN VARCHAR2
) AS
BEGIN
    UPDATE tb_itemdecompra
    SET item_compra = p_item_compra
    WHERE id_compra = p_id_compra AND id_produto = p_id_produto AND id_usuario = p_id_usuario;
    COMMIT;
END atualizar_itemdecompra;



CREATE OR REPLACE PROCEDURE excluir_itemdecompra(
    p_id_compra IN NUMBER,
    p_id_produto IN NUMBER,
    p_id_usuario IN NUMBER
) AS
BEGIN
    DELETE FROM tb_itemdecompra
    WHERE id_compra = p_id_compra AND id_produto = p_id_produto AND id_usuario = p_id_usuario;
    COMMIT;
END excluir_itemdecompra;


Insert, update e delete tb_endereco


CREATE OR REPLACE PROCEDURE inserir_endereco(
    p_id_endereco IN NUMBER,
    p_id_bairro IN NUMBER,
    p_id_usuario IN NUMBER,
    p_logradouro IN VARCHAR2,
    p_numero_endereco IN VARCHAR2,
    p_cep_endereco IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_endereco (id_endereco, id_bairro, id_usuario, logradouro, numero_endereco, cep_endereco)
    VALUES (p_id_endereco, p_id_bairro, p_id_usuario, p_logradouro, p_numero_endereco, p_cep_endereco);
    COMMIT;
END inserir_endereco;



CREATE OR REPLACE PROCEDURE atualizar_endereco(
    p_id_endereco IN NUMBER,
    p_id_bairro IN NUMBER,
    p_id_usuario IN NUMBER,
    p_logradouro IN VARCHAR2,
    p_numero_endereco IN VARCHAR2,
    p_cep_endereco IN VARCHAR2
) AS
BEGIN
    UPDATE tb_endereco
    SET id_bairro = p_id_bairro,
        logradouro = p_logradouro,
        numero_endereco = p_numero_endereco,
        cep_endereco = p_cep_endereco
    WHERE id_endereco = p_id_endereco AND id_usuario = p_id_usuario;
    COMMIT;
END atualizar_endereco;



CREATE OR REPLACE PROCEDURE excluir_endereco(
    p_id_endereco IN NUMBER,
    p_id_usuario IN NUMBER
) AS
BEGIN
    DELETE FROM tb_endereco
    WHERE id_endereco = p_id_endereco AND id_usuario = p_id_usuario;
    COMMIT;
END excluir_endereco;



Insert, update e delete tb_bairro


CREATE OR REPLACE PROCEDURE inserir_bairro(
    p_id_bairro IN NUMBER,
    p_id_cidade IN NUMBER,
    p_nome_bairro IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_bairro (id_bairro, id_cidade, nome_bairro)
    VALUES (p_id_bairro, p_id_cidade, p_nome_bairro);
    COMMIT;
END inserir_bairro;



CREATE OR REPLACE PROCEDURE atualizar_bairro(
    p_id_bairro IN NUMBER,
    p_id_cidade IN NUMBER,
    p_nome_bairro IN VARCHAR2
) AS
BEGIN
    UPDATE tb_bairro
    SET id_cidade = p_id_cidade,
        nome_bairro = p_nome_bairro
    WHERE id_bairro = p_id_bairro;
    COMMIT;
END atualizar_bairro;


CREATE OR REPLACE PROCEDURE excluir_bairro(
    p_id_bairro IN NUMBER
) AS
BEGIN
    DELETE FROM tb_bairro WHERE id_bairro = p_id_bairro;
    COMMIT;
END excluir_bairro;



Insert, update e delete tb_cidade


CREATE OR REPLACE PROCEDURE inserir_cidade(
    p_id_cidade IN NUMBER,
    p_id_estado IN NUMBER,
    p_nome_cidade IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_cidade (id_cidade, id_estado, nome_cidade)
    VALUES (p_id_cidade, p_id_estado, p_nome_cidade);
    COMMIT;
END inserir_cidade;



CREATE OR REPLACE PROCEDURE atualizar_cidade(
    p_id_cidade IN NUMBER,
    p_id_estado IN NUMBER,
    p_nome_cidade IN VARCHAR2
) AS
BEGIN
    UPDATE tb_cidade
    SET id_estado = p_id_estado,
        nome_cidade = p_nome_cidade
    WHERE id_cidade = p_id_cidade;
    COMMIT;
END atualizar_cidade;

CREATE OR REPLACE PROCEDURE excluir_cidade(
    p_id_cidade IN NUMBER
) AS
BEGIN
    DELETE FROM tb_cidade WHERE id_cidade = p_id_cidade;
    COMMIT;
END excluir_cidade;


Insert, update e delete tb_estado

CREATE OR REPLACE PROCEDURE inserir_estado(
    p_id_estado IN NUMBER,
    p_id_pais IN NUMBER,
    p_nome_estado IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_estado (id_estado, id_pais, nome_estado)
    VALUES (p_id_estado, p_id_pais, p_nome_estado);
    COMMIT;
END inserir_estado;



CREATE OR REPLACE PROCEDURE atualizar_estado(
    p_id_estado IN NUMBER,
    p_id_pais IN NUMBER,
    p_nome_estado IN VARCHAR2
) AS
BEGIN
    UPDATE tb_estado
    SET id_pais = p_id_pais,
        nome_estado = p_nome_estado
    WHERE id_estado = p_id_estado;
    COMMIT;
END atualizar_estado;



CREATE OR REPLACE PROCEDURE excluir_estado(
    p_id_estado IN NUMBER
) AS
BEGIN
    DELETE FROM tb_estado WHERE id_estado = p_id_estado;
    COMMIT;
END excluir_estado;


Insert, update e delete tb_pais

CREATE OR REPLACE PROCEDURE inserir_pais(
    p_id_pais IN NUMBER,
    p_nome_pais IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_pais (id_pais, nome_pais)
    VALUES (p_id_pais, p_nome_pais);
    COMMIT;
END inserir_pais;



CREATE OR REPLACE PROCEDURE atualizar_pais(
    p_id_pais IN NUMBER,
    p_nome_pais IN VARCHAR2
) AS
BEGIN
    UPDATE tb_pais
    SET nome_pais = p_nome_pais
    WHERE id_pais = p_id_pais;
    COMMIT;
END atualizar_pais;



CREATE OR REPLACE PROCEDURE excluir_pais(
    p_id_pais IN NUMBER
) AS
BEGIN
    DELETE FROM tb_pais WHERE id_pais = p_id_pais;
    COMMIT;
END excluir_pais;

Insert, update e delete tb_produto


CREATE OR REPLACE PROCEDURE inserir_produto(
    p_id_produto IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_nome_produto IN VARCHAR2,
    p_desc_produto IN VARCHAR2,
    p_preco_produto IN VARCHAR2,
    p_disp_produto IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
    VALUES (p_id_produto, p_id_fornecedor, p_nome_produto, p_desc_produto, p_preco_produto, p_disp_produto);
    COMMIT;
END inserir_produto;



CREATE OR REPLACE PROCEDURE atualizar_produto(
    p_id_produto IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_nome_produto IN VARCHAR2,
    p_desc_produto IN VARCHAR2,
    p_preco_produto IN VARCHAR2,
    p_disp_produto IN VARCHAR2
) AS
BEGIN
    UPDATE tb_produto
    SET id_fornecedor = p_id_fornecedor,
        nome_produto = p_nome_produto,
        desc_produto = p_desc_produto,
        preco_produto = p_preco_produto,
        disp_produto = p_disp_produto
    WHERE id_produto = p_id_produto;
    COMMIT;
END atualizar_produto;



CREATE OR REPLACE PROCEDURE excluir_produto(
    p_id_produto IN NUMBER
) AS
BEGIN
    DELETE FROM tb_produto WHERE id_produto = p_id_produto;
    COMMIT;
END excluir_produto;


Insert, update e delete tb_marca

CREATE OR REPLACE PROCEDURE inserir_marca(
    p_id_marca IN NUMBER,
    p_id_produto IN NUMBER,
    p_marca_produto IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
    VALUES (p_id_marca, p_id_produto, p_marca_produto);
    COMMIT;
END inserir_marca;


CREATE OR REPLACE PROCEDURE atualizar_marca(
    p_id_marca IN NUMBER,
    p_id_produto IN NUMBER,
    p_marca_produto IN VARCHAR2
) AS
BEGIN
    UPDATE tb_marca
    SET id_produto = p_id_produto,
        marca_produto = p_marca_produto
    WHERE id_marca = p_id_marca;
    COMMIT;
END atualizar_marca;



CREATE OR REPLACE PROCEDURE excluir_marca(
    p_id_marca IN NUMBER
) AS
BEGIN
    DELETE FROM tb_marca WHERE id_marca = p_id_marca;
    COMMIT;
END excluir_marca;


Insert, update e delete tb_modelo


CREATE OR REPLACE PROCEDURE inserir_modelo(
    p_id_modelo IN NUMBER,
    p_id_produto IN NUMBER,
    p_nome_modelo IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
    VALUES (p_id_modelo, p_id_produto, p_nome_modelo);
    COMMIT;
END inserir_modelo;



CREATE OR REPLACE PROCEDURE atualizar_modelo(
    p_id_modelo IN NUMBER,
    p_id_produto IN NUMBER,
    p_nome_modelo IN VARCHAR2
) AS
BEGIN
    UPDATE tb_modelo
    SET id_produto = p_id_produto,
        nome_modelo = p_nome_modelo
    WHERE id_modelo = p_id_modelo;
    COMMIT;
END atualizar_modelo;



CREATE OR REPLACE PROCEDURE excluir_modelo(
    p_id_modelo IN NUMBER
) AS
BEGIN
    DELETE FROM tb_modelo WHERE id_modelo = p_id_modelo;
    COMMIT;
END excluir_modelo;

Insert, update e delete tb_fornecedor

CREATE OR REPLACE PROCEDURE inserir_fornecedor(
    p_id_fornecedor IN NUMBER,
    p_nome_fornecedor IN VARCHAR2,
    p_email_fornecedor IN VARCHAR2,
    p_senha_fornecedor IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
    VALUES (p_id_fornecedor, p_nome_fornecedor, p_email_fornecedor, p_senha_fornecedor);
    COMMIT;
END inserir_fornecedor;



CREATE OR REPLACE PROCEDURE atualizar_fornecedor(
    p_id_fornecedor IN NUMBER,
    p_nome_fornecedor IN VARCHAR2,
    p_email_fornecedor IN VARCHAR2,
    p_senha_fornecedor IN VARCHAR2
) AS
BEGIN
    UPDATE tb_fornecedor
    SET nome_fornecedor = p_nome_fornecedor,
        email_fornecedor = p_email_fornecedor,
        senha_fornecedor = p_senha_fornecedor
    WHERE id_fornecedor = p_id_fornecedor;
    COMMIT;
END atualizar_fornecedor;



CREATE OR REPLACE PROCEDURE excluir_fornecedor(
    p_id_fornecedor IN NUMBER
) AS
BEGIN
    DELETE FROM tb_fornecedor WHERE id_fornecedor = p_id_fornecedor;
    COMMIT;
END excluir_fornecedor;


Insert, update e delete tb_endereco_fornecedor


CREATE OR REPLACE PROCEDURE inserir_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER,
    p_id_bairro IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_logradouro_fornecedor IN VARCHAR2,
    p_numero_fornecedor IN VARCHAR2,
    p_cep_fornecedor IN VARCHAR2
) AS
BEGIN
    INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_bairro, id_fornecedor, logradouro_fornedor, numero_fornecedor, cep_fornecedor)
    VALUES (p_id_end_fornecedor, p_id_bairro, p_id_fornecedor, p_logradouro_fornecedor, p_numero_fornecedor, p_cep_fornecedor);
    COMMIT;
END inserir_endereco_fornecedor;





CREATE OR REPLACE PROCEDURE atualizar_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER,
    p_id_bairro IN NUMBER,
    p_id_fornecedor IN NUMBER,
    p_logradouro_fornecedor IN VARCHAR2,
    p_numero_fornecedor IN VARCHAR2,
    p_cep_fornecedor IN VARCHAR2
) AS
BEGIN
    UPDATE tb_endereco_fornecedor
    SET id_bairro = p_id_bairro,
        id_fornecedor = p_id_fornecedor,
        logradouro_fornecedor = p_logradouro_fornecedor,
        numero_fornecedor = p_numero_fornecedor,
        cep_fornecedor = p_cep_fornecedor
    WHERE id_end_fornecedor = p_id_end_fornecedor;
    COMMIT;
END atualizar_endereco_fornecedor;

ALTER PROCEDURE atualizar_endereco_fornecedor COMPILE;


CREATE OR REPLACE PROCEDURE excluir_endereco_fornecedor(
    p_id_end_fornecedor IN NUMBER
) AS
BEGIN
    DELETE FROM tb_endereco_fornecedor WHERE id_end_fornecedor = p_id_end_fornecedor;
    COMMIT;
END excluir_endereco_fornecedor;

