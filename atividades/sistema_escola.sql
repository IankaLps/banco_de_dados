-- Atividade 3
CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    idade int,
    nota decimal(4,2) NOT NULL,
    email varchar(255),
    turma varchar(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, idade, nota, email, turma) VALUES
('Maria Silva', 15, 8.5, 'maria.silva@escola.com', '9A'),
('Luis Santos', 14, 6.8, 'luis.santos@escola.com', '9B'),
('Ana Oliveira', 15, 9.2, 'ana.oliveira@escola.com', '9A'),
('Pedro Costa', 14, 5.5, 'pedro.costa@escola.com', '9B'),
('Juliana Lima', 15, 7.8, 'juliana.lima@escola.com', '9A'),
('Carlos Souza', 14, 6.2, 'carlos.souza@escola.com', '9B'),
('Ozeane Ferreira', 15, 9.5, 'ozeane.ferreira@escola.com', '9A'),
('Eduardo Martins', 14, 8.0, 'eduardo.martins@escola.com', '9B');

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.5 WHERE id = 2;