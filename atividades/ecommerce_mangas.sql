CREATE DATABASE db_ecommerce_mangas;
USE db_ecommerce_mangas;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
titulo varchar(255) NOT NULL,
autor varchar(255),
genero varchar(100),
estoque int,
preco decimal(6, 2),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Naruto", "Masashi Kishimoto", "Shonen", 50, 55.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("KonoSuba", "Natsume Akatsuki", "Comédia", 15, 27.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Kimi ni Todoke", "Karuho Shiina", "Shoujo", 60, 20.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Attack on Titan", "Hajime Isayama", "Shonen", 80, 75.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Ao Haru Ride", "Io Sakisaka", "Shoujo", 35, 63.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Grand Blue", "Kenjirou Hata", "Comédia", 19, 20.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Itazura na Kiss", "Kaoru Tada", "Shoujo", 60, 22.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Re:Zero - Starting Life in Another World", "Tappei Nagatsuki", "Isekai", 70, 42.00);

INSERT INTO tb_produtos(titulo, autor, genero, estoque, preco)
VALUES ("Sword Art Online", "Rei Kawahara", "Isekai", 90, 72.00);

SELECT titulo, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 60.00;

SELECT * FROM tb_produtos WHERE preco < 60.00;

UPDATE tb_produtos SET preco = 45.00 WHERE id = 6;