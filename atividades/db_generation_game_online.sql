CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Tabela de Classes
CREATE TABLE tb_classes(
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    habilidades varchar(255),
    arma varchar(255),
    PRIMARY KEY (id)
);

-- Tabela Personagens (Chave Estrangeira)
CREATE TABLE tb_personagens(
    id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    nivel int,
    ataque decimal(10,2),
    defesa decimal(10,2),
    classe_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Dados tabela classes
INSERT INTO tb_classes(nome, habilidades, arma)
VALUES ("Guerreiro", "Fúria Brutal", "Espada");

INSERT INTO tb_classes(nome, habilidades, arma)
VALUES ("Arqueiro", "Tiro Preciso", "Arco e Flecha");

INSERT INTO tb_classes(nome, habilidades, arma)
VALUES ("Mago", "Bola de Fogo", "Cajado");

INSERT INTO tb_classes(nome, habilidades, arma)
VALUES ("Curandeiro", "Cura Divina", "Grimório");

INSERT INTO tb_classes(nome, habilidades, arma)
VALUES ("Assassino", "Ataque Furtivo", "Adaga");

-- Lista todos os dados da tabela
SELECT * FROM tb_classes;

-- Dados tabela personagens
INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Conan", 50, 2500.00, 1500.00, 1);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Legolas", 45, 2200.00, 1000.00, 2);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Gandalf", 60, 3000.00, 1200.00, 3);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Clerigo", 40, 1500.00, 2000.00, 4);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Carlos", 35, 2800.00, 900.00, 5);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Catharina", 55, 2600.00, 1600.00, 1);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Luna", 42, 1800.00, 1300.00, 3);

INSERT INTO tb_personagens(nome, nivel, ataque, defesa, classe_id)
VALUES ("Shadow", 48, 2900.00, 1100.00, 5);

-- Visualiza todos os dados da tabela
SELECT * FROM tb_personagens;

-- SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000.00;

-- SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000.00 AND 2000.00;

--  SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_personagens com tabela tb_classes.
SELECT tb_personagens.*, tb_classes.nome as classe_nome 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- SELECT com INNER JOIN que retorna apenas personagens arqueiros
SELECT tb_personagens.*, tb_classes.nome as classe_nome, tb_classes.habilidades
FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.nome = "Arqueiro";