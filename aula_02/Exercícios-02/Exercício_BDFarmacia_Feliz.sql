CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
categoria varchar(255) NOT NULL,
quantidade int NOT NULL,
descricao varchar(255),
PRIMARY KEY (id) 
);

INSERT INTO tb_categoria (categoria, quantidade, descricao)
VALUES ("cosméticos", 50, "Produtos de embelezamento.");

INSERT INTO tb_categoria (categoria, quantidade, descricao)
VALUES ("higiene pessoal", 80, "Produtos que visam a preservação da saúde.");

INSERT INTO tb_categoria (categoria, quantidade, descricao)
VALUES ("produtos médicos", 40, "Substância química utilizado para combater uma dor, uma doença.");

INSERT INTO tb_categoria (categoria, quantidade, descricao)
VALUES ("Perfumes", 20, "Composição odorífera ou preparado aromático.");

INSERT INTO tb_categoria (categoria, quantidade, descricao)
VALUES ("Alimentos", 60, "Substância digerível que sirva para alimentar ou nutrir.");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
preco decimal(8,2) NOT NULL,
fabricante varchar(255) NOT NULL,
codigo int NOT NULL,
quantidade int NOT NULL,
categoria_id bigint NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Enxaguante bucal Listerine", 36.50, "Johnson & Johnson", 6491375, 40, 2);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Fio dental colgate", 12.99, "Colgate", 4628791, 40, 2);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Malbec Magnetic", 120.00, "O Boticário", 4613587, 20, 4);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Dorflex 10 comprimidos", 6.00, "Sanofi Aventis", 3167948, 16, 3);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Neosaldina 30 drágeas", 25.12, "Takeda", 6389465, 24, 3);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Barra de cereal de chocolate", 4.50, "Choco Cereais", 4637816, 28, 5);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Chiclete de menta", 3.15, "Mentus", 8549137, 32, 5);

INSERT INTO tb_produto (nome, preco, fabricante, codigo, quantidade, categoria_id)
VALUES ("Creme facial nevea", 32.90, "Nevea", 1467854, 50, 1);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id WHERE categoria_id = 3;