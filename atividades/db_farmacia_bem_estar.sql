-- Atividade 3
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Tabela Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria varchar(255) NOT NULL,
    descricao varchar(255),
    PRIMARY KEY (id)
);

-- Dados tabela categorias
INSERT INTO tb_categorias(nome_categoria, descricao)
VALUES	("Medicamentos", "Remédios com e sem prescrição"),
	    ("Cosméticos", "Produtos de beleza e cuidados pessoais"),
	    ("Higiene", "Produtos de higiene pessoal"),
	    ("Suplementos", "Vitaminas e suplementos alimentares"),
	    ("Primeiros Socorros", "Materiais para curativos e emergências");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Tabela Produtos
CREATE TABLE tb_produtos(
    id bigint AUTO_INCREMENT,
    nome_produto varchar(255) NOT NULL,
    preco decimal(6,2) NOT NULL,
    estoque int,
    marca varchar(255),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Dados tabela produtos
INSERT INTO tb_produtos(nome_produto, preco, estoque, marca, categoria_id)
VALUES ("Cetoconazol", 25.90, 50, "MedLey", 1),
	   ("Protetor Solar", 89.90, 30, "La Roche", 2),
       ("Creme Dental", 8.50, 100, "Colgate", 3),
       ("Centrum", 150.00, 25, "Wyeth", 4),
	   ("Curativo", 15.90, 80, "Band-Aid", 5),
	   ("Cimegripe", 18.90, 45, "Cimed", 1),
       ("Condicionador", 55.90, 35, "Pantene", 2),
	   ("Colageno", 85.90, 20, "Vital", 4);

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_produtos;

-- SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT com operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- SELECT com INNER JOIN, unindo os dados da tabela tb_produtos com tabela tb_categorias.
SELECT tb_produtos.*, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- SELECT com INNER JOIN que retorna apenas uma categoria específica
SELECT tb_produtos.*, tb_categorias.nome_categoria as categoria_nome, tb_categorias.descricao
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.nome_categoria = "Higiene";