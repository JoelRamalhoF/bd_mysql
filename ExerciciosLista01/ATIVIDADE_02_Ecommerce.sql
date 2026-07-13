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
VALUES ("Jaqueta de Couro", "Roupas", "Roupa de Inverno", 498.70),
		("Pc Gamer Ultra", "Eletrônicos", "Computador", 6290.59),
        ('Notebook Lenovo IdeaPad 3', 'Eletrônicos', 'Lenovo', 3599.00),
		('Fone Bluetooth JBL Tune 520BT', 'Eletrônicos', 'JBL', 349.90),
		('Smart TV LG 50 Polegadas', 'Eletrônicos', 'LG', 2799.99),
		('Camiseta Básica Preta', 'Roupas', 'Masculino', 59.90),
		('Jaqueta Jeans Feminina', 'Roupas', 'Feminino', 189.90),
		('Tênis Esportivo Nike Run', 'Calçados', 'Unissex', 399.90);
        
SELECT * FROM tb_produtos WHERE preco < 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos;

UPDATE tb_produtos SET preco = 3590.99 WHERE id = 2;
UPDATE tb_produtos SET nome = 'Pc Gamer de Entrada' WHERE id = 2;