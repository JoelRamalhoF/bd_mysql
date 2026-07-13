CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo_promocao varchar(255) NOT NULL,
borda varchar(255) NOT NULL,
tipo_sabor varchar(255) NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo_promocao, borda, tipo_sabor)
VALUES  ('Nenhuma', 'Tradicional', 'Salgada'),
		('Promoção do Dia', 'Recheada com Catupiry', 'Salgada'),
		('Combo Família', 'Recheada com Cheddar', 'Especial'),
		('Nenhuma', 'Tradicional', 'Doce'),
		('Pizza em Dobro', 'Borda de Chocolate', 'Doce');
        
SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(6, 2),
descricao varchar(255) NOT NULL, 
tamanho varchar(255) NOT NULL, 
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, descricao, tamanho, categoria_id)
VALUES ('Mussarela', 45.90, 'Clássica pizza com muito queijo mussarela e orégano.', 'Grande', 1),
		('Calabresa', 42.50, 'Fatias finas de calabresa com cebola e azeitonas pretas.', 'Grande', 1),
		('Frango com Catupiry', 55.00, 'Frango desfiado coberto com autêntico requeijão Catupiry.', 'Família', 2),
		('Quatro Queijos', 60.00, 'Mussarela, provolone, parmesão e gorgonzola.', 'Média', 2),
		('Marguerita', 35.00, 'Mussarela, tomate em rodelas e folhas de manjericão fresco.', 'Broto', 1),
		('Pepperoni', 65.00, 'Fatias de pepperoni premium com dupla camada de queijo.', 'Família', 3),
		('Chocolate com Morango', 50.00, 'Creme de chocolate ao leite coberto com morangos frescos.', 'Média', 4),
		('Romeu e Julieta', 40.00, 'Combinação perfeita de queijo branco derretido com goiabada.', 'Broto', 5);
        
 SELECT * FROM tb_pizzas;   
 
 -- Operador Lógico
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Operador BETWEEN
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Operador LIKE
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- JOIN
SELECT * FROM tb_pizzas INNER JOIN  tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- JOIN Procurando por pizzas doces
SELECT * FROM tb_pizzas INNER JOIN  tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_pizzas.categoria_id IN (4,5)
ORDER BY preco;
