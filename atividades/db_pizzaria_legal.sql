-- Atividade 2
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Tabela de Categorias
CREATE TABLE tb_categorias(
    id bigint AUTO_INCREMENT,
    nome_categoria varchar(255) NOT NULL,
    tipo varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Tabela Pizzas (Chave Estrangeira)
CREATE TABLE tb_pizzas(
    id bigint AUTO_INCREMENT,
    nome_pizza varchar(255) NOT NULL,
    preco decimal(6,2) NOT NULL,
    ingredientes varchar(255),
    tamanho varchar(255),
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Dados tabela categorias
INSERT INTO tb_categorias(nome_categoria, tipo)
VALUES ("Pizzas salgadas", "Salgada"),
	   ("Pizzas Doces", "Doce"),
       ("Pizzas Vegetarianas ", "Saudável"),
       ("Pizzas sabores especiais", "Premium"),
       ("Promoção", "Desconto");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Dados tabela pizzas
INSERT INTO tb_pizzas (nome_pizza, preco, ingredientes, tamanho, categoria_id)
VALUES
    ("Calabresa", 45.00, "Calabresa, cebola, queijo", "Grande", 1),
    ("Frango com Catupiry", 48.00, "Frango, catupiry, queijo", "Média", 1),
    ("Brigadeiro", 50.00, "Chocolate, granulado", "Média", 2),
    ("Quatro Queijos", 55.00, "Mussarela, parmesão, provolone, gorgonzola", "Grande", 4),
    ("Vegetariana", 42.00, "Tomate, cogumelo, abobrinha, queijo", "Grande", 3),
    ("Romeu e Julieta", 47.00, "Goiabada, queijo", "Média", 2),
    ("Pepperoni", 60.00, "Pepperoni, queijo", "Grande", 1),
    ("Chocolate Branco", 52.00, "Chocolate branco, coco", "Média", 2);

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_pizzas;


-- SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT com operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";


-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_pizzas com tabela tb_categorias.
SELECT tb_pizzas.*, tb_categorias.nome_categoria 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;


-- SELECT com INNER JOIN que retorna apenas uma categoria específica
SELECT tb_pizzas.*, tb_categorias.nome_categoria as categoria_nome, tb_categorias.tipo
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo = "Doce";