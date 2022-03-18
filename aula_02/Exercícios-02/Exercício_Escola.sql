CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255),
idade int,
serie varchar(255),
RA int,
nota double,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Thiago Tomita", 17, "3° ano E.M.", 2842000, 9.5);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Ana Gatti", 16, "2° ano E.M.", 2845000, 9.0);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Carlos Eduardo", 12, "8° ano", 2954000, 8.75);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Enzo Bento", 15, "1° ano E.M.", 2857000, 1.0);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Jorge Amado", 9, "4° ano", 3028000, 6.0);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Caio Hernandes", 14, "9° ano", 2922000, 7.5);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Helio Camargo", 13, "8° ano", 3042000, 6.0);

INSERT INTO tb_alunos (nome, idade, serie, RA, nota)
VALUE ("Arthur Silva", 11, "6° ano", 2968000, 8.25);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 5.0 WHERE id = 4;