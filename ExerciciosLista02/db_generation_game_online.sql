CREATE DATABASE db_generation_game_online;
DROP DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome_classe varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
tipo_dano varchar(50) NOT NULL,
PRIMARY KEY (id)
);
INSERT INTO tb_classes (nome_classe, descricao, tipo_dano)
VALUES ('Mago', 'Mestre das magias milenares com alto dano em área.', 'Mágico'), 
		('Guerreiro','Lutador de linha de frente com alta defesa e vida, focado em lutas 1vs1.','Físico'), 
		('Arqueiro', 'Especialista em ataques rápidos e furtividade à distância', 'Físico/Distância'),
        ('Curandeiro', 'Especialista em magias divinas focadas em cura e suporte para aliados.', 'Mágico/Suporte'), 
		('Necromante', 'Mestre das artes sombrias capaz de invocar e controlar os mortos-vivos.', 'Mágico/Trevas');

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
nivel int NOT NULL,
ataque int NOT NULL, 
defesa int NOT NULL,
classe_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) 
VALUES 
		('Thorgar', 12, 350, 400, 2),  
		('Ariel', 8, 150, 250, 4),       
		('Sylas', 35, 1000, 600, 3),     
		('Lyra', 55, 1650, 950, 3),      
		('Caelens', 72, 2000, 1800, 2),  
		('Eldarion', 88, 2600, 1100, 1), 
		('Malakor', 95, 2800, 1500, 5),  
		('Azura', 100, 3000, 1300, 1);  
        
SELECT * FROM tb_personagens;
-- Operador Lógico
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Operador BETWEEN
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Operador LIKE
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- JOIN
SELECT * FROM tb_personagens INNER JOIN  tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- JOIN Procurando a classe MAGO e ordenando por maior nível
SELECT * FROM tb_personagens INNER JOIN  tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 1
ORDER BY nivel DESC;
