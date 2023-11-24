-- Insert into tb_pais
INSERT INTO tb_pais VALUES (1, 'Brazil');

-- Insert into tb_estado
INSERT INTO tb_estado VALUES (1, 1, 'Sao Paulo');

-- Insert into tb_cidade
INSERT INTO tb_cidade VALUES (1, 1, 'Sao Paulo');

-- Insert into tb_bairro
INSERT INTO tb_bairro VALUES (1, 1, 'Brooklin');

-- Insert into tb_endereco
INSERT INTO tb_endereco VALUES (1, 1, 1, 'Av. Paulista', '123', '01234-567');

-- Insert into tb_usuario
INSERT INTO tb_usuario VALUES (1, 'user1@example.com', 'password123', NULL, '01234-567');

-- Insert into tb_pedido
INSERT INTO tb_pedido VALUES (1, 1, 'Product 1', 'Description 1', TO_DATE('2023-11-24', 'YYYY-MM-DD'), '100.00', 'Y');

-- Insert into tb_itemdecompra
INSERT INTO tb_itemdecompra VALUES (1, 1, 1, 'Item 1');

-- Insert into tb_produto
INSERT INTO tb_produto VALUES (1, 1, 'Product A', 'Description A', '50.00', 'In Stock');

-- Insert into tb_marca
INSERT INTO tb_marca VALUES (1, 1, 'Brand A');

-- Insert into tb_modelo
INSERT INTO tb_modelo VALUES (1, 1, 'Model X');

-- Insert into tb_fornecedor
INSERT INTO tb_fornecedor VALUES (1, 'Supplier 1', 'supplier1@example.com', 'supplierpassword');

-- Insert into tb_endereco_fornecedor
INSERT INTO tb_endereco_fornecedor VALUES (1, 1, 1, 'Supplier Street', '456', '12345-678');

-- Insert into tb_itemdecompra (additional inserts)
INSERT INTO tb_itemdecompra VALUES (1, 1, 1, 'Item 1');
INSERT INTO tb_itemdecompra VALUES (1, 2, 1, 'Item 2');
INSERT INTO tb_itemdecompra VALUES (1, 3, 1, 'Item 3');
INSERT INTO tb_itemdecompra VALUES (2, 1, 1, 'Item 4');
INSERT INTO tb_itemdecompra VALUES (2, 2, 1, 'Item 5');
INSERT INTO tb_itemdecompra VALUES (2, 3, 1, 'Item 6');
INSERT INTO tb_itemdecompra VALUES (3, 1, 1, 'Item 7');
INSERT INTO tb_itemdecompra VALUES (3, 2, 1, 'Item 8');
INSERT INTO tb_itemdecompra VALUES (3, 3, 1, 'Item 9');
INSERT INTO tb_itemdecompra VALUES (4, 1, 1, 'Item 10');

-- Insert into tb_pedido (additional inserts)
INSERT INTO tb_pedido VALUES (2, 1, 'Product 2', 'Description 2', TO_DATE('2023-11-25', 'YYYY-MM-DD'), '75.00', 'N');
INSERT INTO tb_pedido VALUES (3, 1, 'Product 3', 'Description 3', TO_DATE('2023-11-26', 'YYYY-MM-DD'), '120.00', 'Y');
INSERT INTO tb_pedido VALUES (4, 1, 'Product 4', 'Description 4', TO_DATE('2023-11-27', 'YYYY-MM-DD'), '90.00', 'Y');
INSERT INTO tb_pedido VALUES (5, 1, 'Product 5', 'Description 5', TO_DATE('2023-11-28', 'YYYY-MM-DD'), '110.00', 'N');
INSERT INTO tb_pedido VALUES (6, 1, 'Product 6', 'Description 6', TO_DATE('2023-11-29', 'YYYY-MM-DD'), '65.00', 'Y');
INSERT INTO tb_pedido VALUES (7, 1, 'Product 7', 'Description 7', TO_DATE('2023-11-30', 'YYYY-MM-DD'), '150.00', 'Y');
INSERT INTO tb_pedido VALUES (8, 1, 'Product 8', 'Description 8', TO_DATE('2023-12-01', 'YYYY-MM-DD'), '80.00', 'N');
INSERT INTO tb_pedido VALUES (9, 1, 'Product 9', 'Description 9', TO_DATE('2023-12-02', 'YYYY-MM-DD'), '100.00', 'Y');
INSERT INTO tb_pedido VALUES (10, 1, 'Product 10', 'Description 10', TO_DATE('2023-12-03', 'YYYY-MM-DD'), '120.00', 'N');

-- Insert into tb_produto (additional inserts)
INSERT INTO tb_produto VALUES (2, 1, 'Product B', 'Description B', '60.00', 'In Stock');
INSERT INTO tb_produto VALUES (3, 1, 'Product C', 'Description C', '85.00', 'In Stock');
INSERT INTO tb_produto VALUES (4, 1, 'Product D', 'Description D', '70.00', 'In Stock');
INSERT INTO tb_produto VALUES (5, 1, 'Product E', 'Description E', '95.00', 'In Stock');
INSERT INTO tb_produto VALUES (6, 1, 'Product F', 'Description F', '110.00', 'In Stock');
INSERT INTO tb_produto VALUES (7, 1, 'Product G', 'Description G', '130.00', 'In Stock');
INSERT INTO tb_produto VALUES (8, 1, 'Product H', 'Description H', '75.00', 'In Stock');
INSERT INTO tb_produto VALUES (9, 1, 'Product I', 'Description I', '90.00', 'In Stock');
INSERT INTO tb_produto VALUES (10, 1, 'Product J', 'Description J', '115.00', 'In Stock');

-- Insert into tb_marca (additional inserts)
INSERT INTO tb_marca VALUES (2, 2, 'Brand B');
INSERT INTO tb_marca VALUES (3, 3, 'Brand C');
INSERT INTO tb_marca VALUES (4, 4, 'Brand D');
INSERT INTO tb_marca VALUES (5, 5, 'Brand E');
INSERT INTO tb_marca VALUES (6, 6, 'Brand F');
INSERT INTO tb_marca VALUES (7, 7, 'Brand G');
INSERT INTO tb_marca VALUES (8, 8, 'Brand H');
INSERT INTO tb_marca VALUES (9, 9, 'Brand I');
INSERT INTO tb_marca VALUES (10, 10, 'Brand J');

-- Insert into tb_modelo (additional inserts)
INSERT INTO tb_modelo VALUES (2, 2, 'Model Y');
INSERT INTO tb_modelo VALUES (3, 3, 'Model Z');
INSERT INTO tb_modelo VALUES (4, 4, 'Model W');
INSERT INTO tb_modelo VALUES (5, 5, 'Model X1');
INSERT INTO tb_modelo VALUES (6, 6, 'Model Y1');
INSERT INTO tb_modelo VALUES (7, 7, 'Model Z1');
INSERT INTO tb_modelo VALUES (8, 8, 'Model W1');
INSERT INTO tb_modelo VALUES (9, 9, 'Model X2');
INSERT INTO tb_modelo VALUES (10, 10, 'Model Y2');

-- Insert into tb_fornecedor (additional inserts)
INSERT INTO tb_fornecedor VALUES (2, 'Supplier 2', 'supplier2@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (3, 'Supplier 3', 'supplier3@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (4, 'Supplier 4', 'supplier4@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (5, 'Supplier 5', 'supplier5@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (6, 'Supplier 6', 'supplier6@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (7, 'Supplier 7', 'supplier7@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (8, 'Supplier 8', 'supplier8@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (9, 'Supplier 9', 'supplier9@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (10, 'Supplier 10', 'supplier10@example.com', 'supplierpassword');

-- Insert into tb_endereco_fornecedor (additional inserts)
INSERT INTO tb_endereco_fornecedor VALUES (2, 1, 2, 'Supplier Street 2', '789', '23456-789');
INSERT INTO tb_endereco_fornecedor VALUES (3, 1, 3, 'Supplier Street 3', '101', '34567-890');
INSERT INTO tb_endereco_fornecedor VALUES (4, 1, 4, 'Supplier Street 4', '202', '45678-901');
INSERT INTO tb_endereco_fornecedor VALUES (5, 1, 5, 'Supplier Street 5', '303', '56789-012');
INSERT INTO tb_endereco_fornecedor VALUES (6, 1, 6, 'Supplier Street 6', '404', '67890-123');
INSERT INTO tb_endereco_fornecedor VALUES (7, 1, 7, 'Supplier Street 7', '505', '78901-234');
INSERT INTO tb_endereco_fornecedor VALUES (8, 1, 8, 'Supplier Street 8', '606', '89012-345');
INSERT INTO tb_endereco_fornecedor VALUES (9, 1, 9, 'Supplier Street 9', '707', '90123-456');
INSERT INTO tb_endereco_fornecedor VALUES (10, 1, 10, 'Supplier Street 10', '808', '01234-567');

-- Insert into tb_fornecedor (additional inserts)
INSERT INTO tb_fornecedor VALUES (2, 'Supplier 2', 'supplier2@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (3, 'Supplier 3', 'supplier3@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (4, 'Supplier 4', 'supplier4@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (5, 'Supplier 5', 'supplier5@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (6, 'Supplier 6', 'supplier6@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (7, 'Supplier 7', 'supplier7@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (8, 'Supplier 8', 'supplier8@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (9, 'Supplier 9', 'supplier9@example.com', 'supplierpassword');
INSERT INTO tb_fornecedor VALUES (10, 'Supplier 10', 'supplier10@example.com', 'supplierpassword');



select * from tb_usuario;
select * from tb_pedido;
select * from tb_endereco;
select * from tb_bairro;
select * from tb_cidade;
select * from tb_estado;
select * from tb_pais;
select * from tb_endereco_fornecedor;
select * from tb_fornecedor;
select * from tb_produto;
select * from tb_modelo;
select * from tb_marca;
