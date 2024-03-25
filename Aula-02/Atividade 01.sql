CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    especial VARCHAR (255) NOT NULL,
    elemento VARCHAR (255)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    vida INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL
);

INSERT INTO tb_classes (nome, especial) VALUES ("Mago", "Bola de Fogo");

INSERT INTO tb_classes (nome, especial) VALUES ("Beserker", "Ataque de Furia");

INSERT INTO tb_classes (nome, especial) VALUES ("Curandeiro", "Bomba de vida");

INSERT INTO tb_classes (nome, especial) VALUES ("Assasino", "Invisibilidade");

INSERT INTO tb_classes (nome, especial) VALUES ("Tank", "Absorção de dano");


INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Gandalf', 3967, 2473, 2466, 1);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Thor', 3911, 2154, 1040, 2);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Rafael', 3742, 2584, 3697, 3);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Ezio', 3732, 3569, 2648, 4);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Reinhardt', 1534, 1727, 3033, 5);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Legolas', 2984, 1818, 2141, 1);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Geralt', 1827, 1387, 3456, 4);

INSERT INTO tb_personagens (nome, vida, ataque, defesa, classe_id)
VALUES ('Aloy', 1209, 1701, 3878, 1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.nome , vida, ataque, defesa, tb_classes.nome, tb_classes.especial FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classesid = tb_classes.id;

SELECT tb_personagens.nome , vida, ataque, defesa, tb_classes.nome, tb_classes.especial FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classesid = tb_classes.id  WHERE classesid = 1 ;
