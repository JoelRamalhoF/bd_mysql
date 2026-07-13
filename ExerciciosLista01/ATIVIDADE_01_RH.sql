CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (

	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome, cargo, email, salario)
VALUES  ('Jota dos Santos', 'Vendedor', 'jota@empresa.com', 1890.80),
		('Beatriz dos Santos', 'Supervisor', 'beatriz@empresa.com', 4190.60),
        ('João Silva', 'Desenvolvedor Java', 'joao.silva@empresa.com', 4500.00),
		('Maria Oliveira', 'Analista de RH', 'maria.oliveira@empresa.com', 3200.00),
		('Carlos Santos', 'Assistente Administrativo', 'carlos.santos@empresa.com', 1800.00);
        
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 5500.00 WHERE id = 2;
UPDATE tb_colaboradores SET cargo = 'Gerente de Vendas' WHERE id = 2;