CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (

	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	turma VARCHAR(255) NOT NULL,
	periodo VARCHAR(255) NOT NULL,
	media DECIMAL(10,1) NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO tb_estudantes (nome, turma, periodo, media)
VALUES ("Joao dos Santos", "5C", "Matutino", 8.5),
		("Joana Alvares", "6B", "Vespertino", 7.5),
        ("Pedro Henrique", "5C", "Matutino", 6.5),
		("Mariana Souza", "6B", "Vespertino", 8.0),
		("Lucas Almeida", "7A", "Noturno", 7.5),
		("Beatriz Costa", "5C", "Matutino", 9.5),
		("Rafael Lima", "6B", "Vespertino", 6.0),
		("Amanda Ferreira", "7A", "Noturno", 8.0);
        
SELECT * FROM tb_estudantes WHERE media < 7.0;
SELECT * FROM tb_estudantes WHERE media > 7.0;
SELECT * FROM tb_estudantes;

UPDATE tb_estudantes SET media = 7 WHERE id = 7;
UPDATE tb_estudantes SET turma = "6A" WHERE id = 2;