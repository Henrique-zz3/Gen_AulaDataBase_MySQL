CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
    endereco INT,
	nota DECIMAL(6,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, idade, endereco, nota) VALUES 
("João", 18, 12345, 6.50),
("Juliana", 20, 24680, 8.20),
("Pedro", 19, 98765, 6.20),
("Lucas", 22, 13579, 7.50),
("Maria", 20, 54321, 5.80),
("Ana", 21, 67890, 6.90),
("Marcos", 19, 11223, 7.80),
("Carla", 18, 33445, 9.10);

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;