CREATE TABLE tb_usuario (
    id_usuario    NUMBER(5) NOT NULL,
    email_usuario VARCHAR2(255) NOT NULL,
    senha_usuario VARCHAR2(255) NOT NULL,
    cnpj_usuario  VARCHAR2(100),
    cep_usuario   VARCHAR2(9) NOT NULL
);

ALTER TABLE tb_usuario ADD CONSTRAINT tb_usuario_pk PRIMARY KEY ( id_usuario );

CREATE TABLE tb_endereco (
    id_endereco     NUMBER(5) NOT NULL,
    id_usuario      NUMBER(5) NOT NULL,
    logradouro      VARCHAR2(255) NOT NULL,
    numero_endereco VARCHAR2(255) NOT NULL,
    cep_endereco    VARCHAR2(9)
);

ALTER TABLE tb_endereco ADD CONSTRAINT tb_endereco_pk PRIMARY KEY ( id_endereco );

CREATE TABLE tb_pedido (
    id_pedido     NUMBER(5) NOT NULL,
    id_usuario    NUMBER(5) NOT NULL,
    nome_pedido   VARCHAR2(255) NOT NULL,
    desc_pedido   VARCHAR2(255) NOT NULL,
    data_pedido   DATE NOT NULL,
    preco_pedido  VARCHAR2(255) NOT NULL,
    pedido_aceito CHAR(1) NOT NULL
);

ALTER TABLE tb_pedido ADD CONSTRAINT tb_pedido_pk PRIMARY KEY ( id_pedido );



CREATE TABLE tb_itemdecompra (
    id_compra   NUMBER(5) NOT NULL,
    id_usuario  NUMBER(5) NOT NULL,
    id_produto  NUMBER(5) NOT NULL,
    item_compra VARCHAR2(255) NOT NULL
);

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT tb_itemdecompra_pk PRIMARY KEY ( id_compra,
                                                    id_usuario,
                                                    id_produto );

CREATE TABLE tb_produto (
    id_produto    NUMBER(5) NOT NULL,
    id_fornecedor NUMBER(5) NOT NULL,
    nome_produto  VARCHAR2(255) NOT NULL,
    desc_produto  VARCHAR2(255) NOT NULL,
    preco_produto VARCHAR2(255) NOT NULL,
    disp_produto  VARCHAR2(255) NOT NULL
);

ALTER TABLE tb_produto ADD CONSTRAINT tb_produto_pk PRIMARY KEY ( id_produto );

CREATE TABLE tb_marca (
    id_marca      NUMBER(5) NOT NULL,
    id_produto    NUMBER(5) NOT NULL,
    marca_produto VARCHAR2(255) NOT NULL
);

ALTER TABLE tb_marca ADD CONSTRAINT tb_marca_pk PRIMARY KEY ( id_marca );

CREATE TABLE tb_modelo (
    id_modelo   NUMBER(5) NOT NULL,
    id_produto  NUMBER(5) NOT NULL,
    nome_modelo VARCHAR2(255) NOT NULL
);

ALTER TABLE tb_modelo ADD CONSTRAINT tb_modelo_pk PRIMARY KEY ( id_modelo );

CREATE TABLE tb_fornecedor (
    id_fornecedor    NUMBER(5) NOT NULL,
    nome_fornecedor  VARCHAR2(255) NOT NULL,
    email_fornecedor VARCHAR2(255) NOT NULL,
    senha_fornecedor VARCHAR2(255)
);

ALTER TABLE tb_fornecedor ADD CONSTRAINT tb_fornecedor_pk PRIMARY KEY ( id_fornecedor );

CREATE TABLE tb_endereco_fornecedor (
    id_end_fornecedor     NUMBER(5) NOT NULL,
    id_fornecedor         NUMBER(5) NOT NULL,
    logradouro_fornecedor VARCHAR2(255) NOT NULL,
    numero_fornecedor     VARCHAR2(255) NOT NULL,
    cep_fornecedor        VARCHAR2(255) NOT NULL
);

ALTER TABLE tb_endereco_fornecedor ADD CONSTRAINT tb_endereco_fornecedor_pk PRIMARY KEY ( id_end_fornecedor );



ALTER TABLE tb_endereco_fornecedor
    ADD CONSTRAINT fk_fornecedor_end_f FOREIGN KEY ( id_fornecedor )
        REFERENCES tb_fornecedor ( id_fornecedor );

ALTER TABLE tb_produto
    ADD CONSTRAINT fk_fornecedor_produto FOREIGN KEY ( id_fornecedor )
        REFERENCES tb_fornecedor ( id_fornecedor );

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT fk_produto_itemdecompra FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_marca
    ADD CONSTRAINT fk_produto_marca FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_modelo
    ADD CONSTRAINT fk_produto_modelo FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_endereco
    ADD CONSTRAINT fk_usuario_endereco FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT fk_usuario_itemdecompra FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );

ALTER TABLE tb_pedido
    ADD CONSTRAINT fk_usuario_pedido FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );



DROP TABLE tb_endereco CASCADE CONSTRAINTS;

DROP TABLE tb_endereco_fornecedor CASCADE CONSTRAINTS;

DROP TABLE tb_fornecedor CASCADE CONSTRAINTS;

DROP TABLE tb_itemdecompra CASCADE CONSTRAINTS;

DROP TABLE tb_marca CASCADE CONSTRAINTS;

DROP TABLE tb_modelo CASCADE CONSTRAINTS;

DROP TABLE tb_pedido CASCADE CONSTRAINTS;

DROP TABLE tb_produto CASCADE CONSTRAINTS;

DROP TABLE tb_usuario CASCADE CONSTRAINTS;










