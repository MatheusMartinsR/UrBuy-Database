DROP TABLE tb_bairro CASCADE CONSTRAINTS;

DROP TABLE tb_cidade CASCADE CONSTRAINTS;

DROP TABLE tb_endereco CASCADE CONSTRAINTS;

DROP TABLE tb_endereco_fornecedor CASCADE CONSTRAINTS;

DROP TABLE tb_estado CASCADE CONSTRAINTS;

DROP TABLE tb_fornecedor CASCADE CONSTRAINTS;

DROP TABLE tb_itemdecompra CASCADE CONSTRAINTS;

DROP TABLE tb_itempedido CASCADE CONSTRAINTS;

DROP TABLE tb_marca CASCADE CONSTRAINTS;

DROP TABLE tb_modelo CASCADE CONSTRAINTS;

DROP TABLE tb_pais CASCADE CONSTRAINTS;

DROP TABLE tb_pedido CASCADE CONSTRAINTS;

DROP TABLE tb_produto CASCADE CONSTRAINTS;

DROP TABLE tb_usuario CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE tb_bairro (
    id_bairro   NUMBER(5) NOT NULL,
    id_cidade   NUMBER(5) NOT NULL,
    nome_bairro VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_bairro ADD CONSTRAINT tb_bairro_pk PRIMARY KEY ( id_bairro );

CREATE TABLE tb_cidade (
    id_cidade   NUMBER(5) NOT NULL,
    id_estado   NUMBER(5) NOT NULL,
    nome_cidade VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_cidade ADD CONSTRAINT tb_cidade_pk PRIMARY KEY ( id_cidade );

CREATE TABLE tb_endereco (
    id_endereco     NUMBER(5) NOT NULL,
    id_bairro       NUMBER(5) NOT NULL,
    id_usuario      NUMBER(5) NOT NULL,
    logradouro      VARCHAR2(100) NOT NULL,
    numero_endereco VARCHAR2(100),
    cep_endereco    VARCHAR2(10) NOT NULL
);

ALTER TABLE tb_endereco ADD CONSTRAINT tb_endereco_pk PRIMARY KEY ( id_endereco );

CREATE TABLE tb_endereco_fornecedor (
    id_end_endereco       NUMBER(5) NOT NULL,
    id_fornecedor         NUMBER(5) NOT NULL,
    logradouro_fornecedor VARCHAR2(100) NOT NULL,
    numero_fornecedor     VARCHAR2(100) NOT NULL,
    cep_fornecedor        VARCHAR2(10) NOT NULL
);

ALTER TABLE tb_endereco_fornecedor ADD CONSTRAINT tb_endereco_fornecedor_pk PRIMARY KEY ( id_end_endereco );

CREATE TABLE tb_estado (
    id_estado   NUMBER(5) NOT NULL,
    id_pais     NUMBER(5) NOT NULL,
    nome_estado VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_estado ADD CONSTRAINT tb_estado_pk PRIMARY KEY ( id_estado );

CREATE TABLE tb_fornecedor (
    id_fornecedor    NUMBER(5) NOT NULL,
    nome_fornecedor  VARCHAR2(100) NOT NULL,
    email_fornecedor VARCHAR2(100) NOT NULL,
    senha_fornecedor VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_fornecedor ADD CONSTRAINT tb_fornecedor_pk PRIMARY KEY ( id_fornecedor );

CREATE TABLE tb_itemdecompra (
    id_compra   NUMBER(5) NOT NULL,
    id_produto  NUMBER(5) NOT NULL,
    id_usuario  NUMBER(5) NOT NULL,
    data_compra DATE NOT NULL
);

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT tb_itemdecompra_pk PRIMARY KEY ( id_compra,
                                                    id_produto,
                                                    id_usuario );

CREATE TABLE tb_itempedido (
    id_itempedido NUMBER(5) NOT NULL,
    id_usuario    NUMBER(5) NOT NULL,
    id_pedido     NUMBER(5) NOT NULL,
    item_pedido   VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_itempedido ADD CONSTRAINT tb_itempedido_pk PRIMARY KEY ( id_itempedido );

CREATE TABLE tb_marca (
    id_marca      NUMBER(5) NOT NULL,
    id_produto    NUMBER(5) NOT NULL,
    marca_produto VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_marca ADD CONSTRAINT tb_marca_pk PRIMARY KEY ( id_marca );

CREATE TABLE tb_modelo (
    id_modelo   NUMBER(5) NOT NULL,
    id_produto  NUMBER(5) NOT NULL,
    nome_modelo VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_modelo ADD CONSTRAINT tb_modelo_pk PRIMARY KEY ( id_modelo );

CREATE TABLE tb_pais (
    id_pais   NUMBER(5) NOT NULL,
    nome_pais VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_pais ADD CONSTRAINT tb_pais_pk PRIMARY KEY ( id_pais );

CREATE TABLE tb_pedido (
    id_pedido     NUMBER(5) NOT NULL,
    nome_pedido   VARCHAR2(100) NOT NULL,
    desc_pedido   VARCHAR2(100) NOT NULL,
    data_pedido   DATE NOT NULL,
    preco_pedido  VARCHAR2(100) NOT NULL,
    pedido_aceito CHAR(1) NOT NULL
);

ALTER TABLE tb_pedido ADD CONSTRAINT tb_pedido_pk PRIMARY KEY ( id_pedido );

CREATE TABLE tb_produto (
    id_produto    NUMBER(5) NOT NULL,
    id_fornecedor NUMBER(5) NOT NULL,
    nome_produto  VARCHAR2(100) NOT NULL,
    desc_produto  VARCHAR2(100) NOT NULL,
    preco_produto VARCHAR2(100) NOT NULL,
    disp_produto  VARCHAR2(100) NOT NULL
);

ALTER TABLE tb_produto ADD CONSTRAINT tb_produto_pk PRIMARY KEY ( id_produto );

CREATE TABLE tb_usuario (
    id_usuario    NUMBER(5) NOT NULL,
    email_usuario VARCHAR2(100) NOT NULL,
    senha_produto VARCHAR2(100) NOT NULL,
    cnpj_usuario  VARCHAR2(100) NOT NULL,
    cep_usuario   VARCHAR2(10) NOT NULL
);

ALTER TABLE tb_usuario ADD CONSTRAINT tb_usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE tb_endereco
    ADD CONSTRAINT "FK_BAIRRO_ENDERECO " FOREIGN KEY ( id_bairro )
        REFERENCES tb_bairro ( id_bairro );

ALTER TABLE tb_bairro
    ADD CONSTRAINT fk_cidade_bairro FOREIGN KEY ( id_cidade )
        REFERENCES tb_cidade ( id_cidade );

ALTER TABLE tb_cidade
    ADD CONSTRAINT fk_estado_cidade FOREIGN KEY ( id_estado )
        REFERENCES tb_estado ( id_estado );

ALTER TABLE tb_endereco_fornecedor
    ADD CONSTRAINT fk_fornecedor_end_f FOREIGN KEY ( id_fornecedor )
        REFERENCES tb_fornecedor ( id_fornecedor );

ALTER TABLE tb_produto
    ADD CONSTRAINT fk_fornecedor_produto FOREIGN KEY ( id_fornecedor )
        REFERENCES tb_fornecedor ( id_fornecedor );

ALTER TABLE tb_estado
    ADD CONSTRAINT fk_pais_estado FOREIGN KEY ( id_pais )
        REFERENCES tb_pais ( id_pais );

ALTER TABLE tb_itempedido
    ADD CONSTRAINT fk_pedido_itempedido FOREIGN KEY ( id_pedido )
        REFERENCES tb_pedido ( id_pedido );

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT fk_produto_itemcompra FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_marca
    ADD CONSTRAINT fk_produto_marca FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_modelo
    ADD CONSTRAINT fk_produto_modelo FOREIGN KEY ( id_produto )
        REFERENCES tb_produto ( id_produto );

ALTER TABLE tb_endereco
    ADD CONSTRAINT "FK_USUARIO_ENDERECO " FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );

ALTER TABLE tb_itemdecompra
    ADD CONSTRAINT fk_usuario_itemcompra FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );

ALTER TABLE tb_itempedido
    ADD CONSTRAINT fk_usuario_itempedido FOREIGN KEY ( id_usuario )
        REFERENCES tb_usuario ( id_usuario );
