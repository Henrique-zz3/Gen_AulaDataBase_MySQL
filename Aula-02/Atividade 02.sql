CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantPedacos INT NOT NULL,
    valor DECIMAL (6,2) NOT NULL,
    tamanho  VARCHAR (255) NOT NULL,
    categoriasid BIGINT
);

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(255) NOT NULL,
    bordaRecheada BOOLEAN NOT NULL
);

-- Restrição para Adicionar a Chave Estrangeira de Categoria
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo, bordaRecheada) VALUES ('Salgada', false);
INSERT INTO tb_categorias (tipo, bordaRecheada) VALUES ('Doce', false);
INSERT INTO tb_categorias (tipo, bordaRecheada) VALUES ('Salgada', true);
INSERT INTO tb_categorias (tipo, bordaRecheada) VALUES ('Doce', true);

INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Calabresa', 8, 49.9, 'Grande', 1);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Banana com canela', 8, 57.9, 'Grande', 2);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Doce de Leite', 4, 30, 'Pequena', 2);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Musarella', 8, 44.9, 'Grande', 1);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Portuguesa', 6, 44.9, 'Media', 1);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Camarão', 8, 79.9, 'Grande', 3);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Brigadeiro', 8, 60.9, 'Grande', 4);
INSERT INTO tb_pizzas (nome, quantPedacos, valor, tamanho, categoriasid) VALUES ( 'Brocolis', 8, 69.9, 'Grande', 3);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriasid = tb_categorias.id WHERE tb_categorias.tipo LIKE "Salgada%";