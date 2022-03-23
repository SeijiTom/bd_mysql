CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT NOT NULL,
categoria varchar(255) NOT NULL,
tamanho varchar(255) NOT NULL,
formato varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Doce", "Broto", "Circular");

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Doce", "Grande", "Circular");

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Salgada", "Broto", "Circular");

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Salgada", "Grande", "Circular");

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Salgado", "Grande", "Quadrado");

INSERT INTO tb_categoria (categoria, tamanho, formato)
VALUES ("Doce", "Grande", "Quadrado");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
ingredientes varchar(255) NOT NULL,
valor decimal(8,2) NOT NULL,
tempo_preparo varchar(255) NOT NULL,
tipo_massa varchar(255) NOT NULL,
categoria_id bigint NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Portuguesa", "Molho, presunto, queijo, ovo e ervilha", 24.99, "20 minutos", "crocante", 4);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Quatro queijos", "Muçarela, catupiry, parmesão e provolone", 26.99, "25 minutos", "crocante", 4);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Dois queijos", "Muçarela e catupiry", 13.99, "12 minutos", "crocante", 3);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Ninho com nutella", "Creme, nutella e ninho", 34.99, "25 minutos", "macia", 2);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Prestigio", "Chocolate e coco ralado", 30.99, "20 minutos", "macia", 2);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Explosão doce", "Nutella, ninho, creme, chantilly, m&ms e granulados", 45.99, "35 minutos", "macia", 6);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Mineira", "Catupiry, cebola, muçarela, calabresa moída, palmito e bacon", 50.99, "40 minutos", "crocante", 5);

INSERT INTO tb_pizza (nome, ingredientes, valor, tempo_preparo, tipo_massa, categoria_id)
VALUES ("Banana com canela", "Banana, canela e leite condensado", 14.99, "15 minutos", "macia", 2);

SELECT * FROM tb_pizza WHERE valor > 45;

SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id
WHERE categoria = "DOCE";