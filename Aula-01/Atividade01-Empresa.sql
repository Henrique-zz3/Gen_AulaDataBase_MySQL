CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cpf INT,
    idade INT,
    datacontratacao DATE,
	salario DECIMAL (6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(
nome,
cpf,
idade,
datacontratacao,
salario
)VALUES ("Mizael", "12345678910", 23, "2024-03-27", 2231.37);

ALTER TABLE tb_funcionarios MODIFY idade INT;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

INSERT INTO tb_funcionarios(nome, cpf, idade, datacontratacao, salario) VALUES 
("Joana", "98765432100", 30, "2023-05-15", 3500.00),
("Pedro", "87654321099", 28, "2022-12-10", 2800.50),
("Maria", "76543210988", 35, "2024-01-20", 4000.75),
("Lucas", "65432109877", 26, "2023-08-05", 3200.25),
("Ana", "54321098766", 33, "2022-11-30", 3800.00),
("Marcos", "43210987655", 31, "2024-02-28", 4200.25),
("Juliana", "32109876544", 29, "2023-04-18", 3100.00),
("Carlos", "21098765433", 27, "2022-09-10", 2900.50);

UPDATE tb_funcionarios SET salario = 1350.60 WHERE id = 9;