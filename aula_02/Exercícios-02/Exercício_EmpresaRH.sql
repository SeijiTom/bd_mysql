CREATE DATABASE bd_EmpresaX;

USE bd_EmpresaX;

CREATE TABLE tb_Funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int NOT NULL,
CPF varchar(255) NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal(8,2) NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_Funcionarios (nome, idade, CPF, cargo, salario)
VALUES ("Ana Gatti", 24, "713.655.784-00", "Dev Java Plena", 5000.00);

INSERT INTO tb_Funcionarios (nome, idade, CPF, cargo, salario)
VALUES ("Esmeralda Neves", 26, "512.688.254-05", "Dev Java Jr", 1800.00);

INSERT INTO tb_Funcionarios (nome, idade, CPF, cargo, salario)
VALUES ("Jhonnatan Caique", 22, "478.521.645-00", "Analista de dados", 4500.00);

INSERT INTO tb_Funcionarios (nome, idade, CPF, cargo, salario)
VALUES ("Thiago Tomita", 20, "545.224.478-05", "Dev Java Jr", 1950.00);

-- Select
SELECT * FROM tb_Funcionarios;

SELECT * FROM tb_Funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_Funcionarios WHERE salario < 2000.00;

-- Atualizando um dado da tabela através de um Querry de atualização
UPDATE tb_Funcionarios SET salario = 3500 WHERE id = 4;