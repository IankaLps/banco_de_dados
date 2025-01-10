-- Atividade 1
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date,
data_admissao date,
email VARCHAR(255),
telefone VARCHAR(15),
cargo varchar(255),
salario decimal(8, 2),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Maria","1995-04-10", "2021-03-02", "maria@empresa.com", "(11) 91234-5678", "Vendedora", 1900.00);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Luis","1981-08-19", "2017-09-21", "luis@empresa.com", "(11) 98765-4321", "Analista de TI", 3500.00);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Ana", "1990-06-15", "2017-01-10", "ana@empresa.com", "(11) 92345-6789", "Gerente de Loja", 4500.00);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Carlos", "1988-11-30", "2020-06-18", "carlos@empresa.com", "(11) 91234-6789", "Estoquista", 2200.00);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Juliana", "1993-02-02", "2021-11-01", "juliana@empresa.com", "(11) 94567-8901", "Consultora de Beleza", 2800.00);

INSERT INTO tb_colaboradores(nome, data_nascimento, data_admissao, email, telefone, cargo, salario)
VALUES ("Carol", "1992-09-25", "2022-08-10", "carol@empresa.com", "(11) 93210-5432", "Caixa", 1900.00);

SELECT nome, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_colaboradores;

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 1;
