CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (

	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
	modelo VARCHAR(255) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO tb_produtos(nome, categoria, modelo, preco)
VALUES ("Jaqueta de Couro", "Roupa", "Roupa de Inverno", 498.70),
		("Pc Gamer Ultra", "Eletrônicos", "Computador", 6290.59);
        
SELECT * FROM tb_produtos WHERE preco < 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 3590.99 WHERE id = 2;
UPDATE tb_produtos SET nome = 'Pc Gamer de Entrada' WHERE id = 2;