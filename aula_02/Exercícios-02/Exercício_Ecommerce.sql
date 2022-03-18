CREATE DATABASE bd_ecommerce;

USE bd_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255),
marca varchar(255),
categoria varchar(255),
codigo int,
quantidade int,
preco double,
desconto double,
preco_descontado double,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Faca chefe 8", "Tramontina", "Utensílios Domésticos", 8559749, 30.00, 228.93, 50, 178.93);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Notebook Dell Inspiron", "Dell", "Informática", 1029487, 15, 2500.00, 200.00, 2300.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Zenfone Max Pro", "Asus", "Celulares", 7649581, 10, 1910.00, 220.00, 1690.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Garrafa Hotwheels", "Mattel", "Garrafas", 6549781, 42, 45.00, 6.00, 39.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("PS5", "Sony", "Video-games", 4682153, 22, 4500.00, 400.00, 4100.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("XBOX SERIES X", "Microsoft", "Video-games", 3294875, 23, 4800.00, 450.00, 4350.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Tenis Ultraboost 17", "Adidas", "Calçados", 4617859, 12, 700.00, 300.00, 400.00);

INSERT INTO tb_produtos (nome, marca, categoria, codigo, quantidade, preco, desconto, preco_descontado)
VALUES ("Mouse Deathader Elite", "Razer", "Informática", 6495378, 19, 310.00, 60.00, 250.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco_descontado > 500;

SELECT * FROM tb_produtos WHERE preco_descontado < 500;

UPDATE tb_produtos SET preco = 550, desconto = 49, preco_descontado = 501 WHERE id = 1;