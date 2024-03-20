CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    peso INT,
	valor DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produto(nome, quantidade, peso, valor) VALUES 
("Camiseta", 100, 200, 29.90),
("Calça Jeans", 50, 500, 59.99),
("Tênis Esportivo", 80, 700, 99.50),
("Mochila", 120, 1000, 79.99),
("Óculos de Sol", 150, 50, 39.99),
("Relógio de Pulso", 70, 150, 149.99),
("Fone de Ouvido", 200, 30, 49.99),
("Bolsa Feminina", 90, 300, 69.99);

UPDATE tb_produto SET valor = 699.90 WHERE id = 3;

SELECT * FROM tb_produto WHERE valor > 500;
SELECT * FROM tb_produto WHERE valor < 500;

SELECT * FROM tb_produto;