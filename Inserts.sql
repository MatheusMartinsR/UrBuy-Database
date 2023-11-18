

INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (1, 'Matheus@example.com', 'senha123', '12345678901234', '12345-678');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (2, 'Gustavo@example.com', 'senha456', '56789012345678', '56789-012');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (3, 'Henrique@example.com', 'senha789', '90123456789012', '90123-456');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (4, 'Luiz@example.com', 'senhaabc', '34567890123456', '34567-890');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (5, 'Gabriel@example.com', 'senhaxyz', '67890123456789', '67890-123');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (6, 'Carlos@example.com', 'senha123', '12345678901234', '12345-678');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (7, 'Silvio@example.com', 'senha456', '56789012345678', '56789-012');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (8, 'Erick@example.com', 'senha789', '90123456789012', '90123-456');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (9, 'LuisGustavo@example.com', 'senhaabc', '34567890123456', '34567-890');
INSERT INTO tb_usuario (id_usuario, email_usuario, senha_usuario, cnpj_usuario, cep_usuario)
VALUES 
    (10, 'Renato@example.com', 'senhaxyz', '67890123456789', '67890-123');




INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (1, 1, 'Rua A', '123', '12345-678');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (2, 2, 'Rua B', '456', '56789-012');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (2, 2, 'Rua B', '456', '56789-012');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (3, 3, 'Rua C', '789', '78901-234');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (4, 4, 'Rua D', '1011', '10112-345');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (5, 5, 'Rua E', '1213', '12134-567');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (6, 6, 'Rua F', '1415', '14156-789');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (7, 7, 'Rua G', '1617', '16178-901');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (8, 8, 'Rua H', '1819', '18190-123');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (9, 9, 'Rua I', '2021', '20212-345');
INSERT INTO tb_endereco (id_endereco, id_usuario, logradouro, numero_endereco, cep_endereco)
VALUES
    (10, 10, 'Rua J', '2223', '22234-567');



INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (1, 'Fornecedor1', 'fornecedor1@example.com', 'senha123');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (2, 'Fornecedor2', 'fornecedor2@example.com', 'senha456');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (3, 'Fornecedor3', 'fornecedor3@example.com', 'senha789');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (4, 'Fornecedor4', 'fornecedor4@example.com', 'senhaabc');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (5, 'Fornecedor5', 'fornecedor5@example.com', 'senhaxyz');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (6, 'Fornecedor6', 'fornecedor6@example.com', 'senha123');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (7, 'Fornecedor7', 'fornecedor7@example.com', 'senha456');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (8, 'Fornecedor8', 'fornecedor8@example.com', 'senha789');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (9, 'Fornecedor9', 'fornecedor9@example.com', 'senhaabc');
INSERT INTO tb_fornecedor (id_fornecedor, nome_fornecedor, email_fornecedor, senha_fornecedor)
VALUES 
    (10, 'Fornecedor10', 'fornecedor10@example.com', 'senhaxyz');


INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (1, 1, 'Rua A', '123', '12345-678');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (2, 2, 'Rua B', '456', '56789-012');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (3, 3, 'Rua C', '789', '90123-456');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (4, 4, 'Rua D', '1011', '34567-890');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (5, 5, 'Rua E', '1213', '67890-123');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (6, 6, 'Rua F', '1415', '12345-678');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (7, 7, 'Rua G', '1617', '56789-012');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (8, 8, 'Rua H', '1819', '90123-456');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (9, 9, 'Rua I', '2021', '34567-890');
INSERT INTO tb_endereco_fornecedor (id_end_fornecedor, id_fornecedor, logradouro_fornecedor, numero_fornecedor, cep_fornecedor)
VALUES 
    (10, 10, 'Rua J', '2223', '67890-123');

INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (1, 1, 'Produto1', 'Descrição do Produto 1', '100.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (2, 2, 'Produto2', 'Descrição do Produto 2', '150.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (3, 3, 'Produto3', 'Descrição do Produto 3', '200.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (4, 4, 'Produto4', 'Descrição do Produto 4', '250.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (5, 5, 'Produto5', 'Descrição do Produto 5', '300.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (6, 6, 'Produto6', 'Descrição do Produto 6', '120.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (7, 7, 'Produto7', 'Descrição do Produto 7', '180.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (8, 8, 'Produto8', 'Descrição do Produto 8', '220.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (9, 9, 'Produto9', 'Descrição do Produto 9', '270.00', 'Disponível');
INSERT INTO tb_produto (id_produto, id_fornecedor, nome_produto, desc_produto, preco_produto, disp_produto)
VALUES 
    (10, 10, 'Produto10', 'Descrição do Produto 10', '320.00', 'Disponível');

INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (1, 1, 'Marca1');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (2, 2, 'Marca2');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (3, 3, 'Marca3');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (4, 4, 'Marca4');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (5, 5, 'Marca5');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (6, 6, 'Marca6');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (7, 7, 'Marca7');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (8, 8, 'Marca8');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (9, 9, 'Marca9');
INSERT INTO tb_marca (id_marca, id_produto, marca_produto)
VALUES 
    (10, 10, 'Marca10');



INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (1, 1, 'Modelo1');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (2, 2, 'Modelo2');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (3, 3, 'Modelo3');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (4, 4, 'Modelo4');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (5, 5, 'Modelo5');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (6, 6, 'Modelo6');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (7, 7, 'Modelo7');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (8, 8, 'Modelo8');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (9, 9, 'Modelo9');
INSERT INTO tb_modelo (id_modelo, id_produto, nome_modelo)
VALUES 
    (10, 10, 'Modelo10');



INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (1, 1, 1, 'ItemCompra1');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (2, 2, 2, 'ItemCompra2');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (3, 3, 3, 'ItemCompra3');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (4, 4, 4, 'ItemCompra4');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (5, 5, 5, 'ItemCompra5');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (6, 6, 6, 'ItemCompra6');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (7, 7, 7, 'ItemCompra7');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (8, 8, 8, 'ItemCompra8');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (9, 9, 9, 'ItemCompra9');
INSERT INTO tb_itemdecompra (id_compra, id_usuario, id_produto, item_compra)
VALUES 
    (10, 10, 10, 'ItemCompra10');





INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (1, 1, 'Pedido1', 'Descrição1', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '100.00', 'S');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (2, 1, 'Pedido2', 'Descrição2', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '150.00', 'N');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (3, 2, 'Pedido3', 'Descrição3', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '120.00', 'S');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (4, 2, 'Pedido4', 'Descrição4', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '200.00', 'N');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (5, 3, 'Pedido5', 'Descrição5', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '180.00', 'S');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (6, 3, 'Pedido6', 'Descrição6', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '90.00', 'N');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (7, 4, 'Pedido7', 'Descrição7', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '120.00', 'S');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (8, 4, 'Pedido8', 'Descrição8', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '250.00', 'N');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (9, 5, 'Pedido9', 'Descrição9', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '200.00', 'S');
INSERT INTO tb_pedido (id_pedido, id_usuario, nome_pedido, desc_pedido, data_pedido, preco_pedido, pedido_aceito)
VALUES 
    (10, 5, 'Pedido10', 'Descrição10', TO_DATE('2023-11-17', 'YYYY-MM-DD'), '150.00', 'N');
