CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
equipamento_inicial varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (classe, descricao, equipamento_inicial)
VALUES ("Guerreiro", "Os guerreiros são conhecidos por sua ferocidade e força no
campo de batalha!", "Machado");

INSERT INTO tb_classes (classe, descricao, equipamento_inicial)
VALUES ("Assassino", "Furtivo, ágil e preciso. São profissionais no que fazem!", "Adaga");
 
 INSERT INTO tb_classes (classe, descricao, equipamento_inicial)
VALUES ("Mago", "Magos, seres poderosos e com profunda sabedoria antiga!", "Livro antigo");

INSERT INTO tb_classes (classe, descricao, equipamento_inicial)
VALUES ("Duelista", "Ágil com a espada, não hesita em avançar diante do 
inimigo!", "Espada");

INSERT INTO tb_classes (classe, descricao, equipamento_inicial)
VALUES ("Arqueiro", "Consegue acertar um alvo a metros de distância!", "Arco e flechas");
 
 SELECT * FROM tb_classes;
 
 CREATE TABLE tb_personagens(
 id bigint AUTO_INCREMENT NOT NULL,
 nome varchar(255) NOT NULL,
 nivel int NOT NULL,
 ataque int NOT NULL,
 defesa int NOT NULL,
 habilidade varchar(255) NOT NULL,
 classe_id bigint NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
 );

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Beowulf64", 78, 2624, 2556, "Modo Berserker", 1);
 
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("RagnarPOO", 64, 2504, 2445, "Machado em fúria", 1);
 
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Legolas120", 102, 2001, 1360, "Chuva de flechas", 5);
 
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Gamorac101", 82, 2340, 1330, "Invisibilidade", 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Dudu_duelista", 40, 1412, 1310, "Estocada rápido", 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Gandalf_irado", 35, 1425, 1240, "Poder do fogo", 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Arco385", 37, 1432, 1210, "Flecha guiada", 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, habilidade, classe_id)
VALUES ("Duelista21", 52, 1532, 1420, "Fatiar", 4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE classe = "Duelista";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE classe_id = 1;