CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal,
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

ALTER TABLE tb_produtos ADD decricao varchar(255);

-- Comentário
DESC tb_produtos; 

ALTER TABLE tb_produtos CHANGE decricao descricao_produto varchar(500);

ALTER TABLE tb_produtos DROP descricao_produto;

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Tomate", 100, "2025-01-10", 8.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Pepino", 57, "2025-02-13", 9.50), 
	   ("Cenoura", 20, "2025-01-20", 7.00),
       ("Cebola", 60, "2025-03-07", 8.00),
       ("Repolho", 30, "2025-02-02", 3.00);
       

SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE preco > 4.00;

SELECT * FROM tb_produtos WHERE preco > 2.00 AND nome = "Repolho";

SELECT * FROM tb_produtos WHERE preco > 5.00 OR nome = "Tomate";

SELECT * FROM tb_produtos WHERE nome != "Tomate";

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_produtos;

SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

UPDATE tb_produtos SET preco = 9.50 WHERE id = 3;

DELETE FROM tb_produtos WHERE id IN (2, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);