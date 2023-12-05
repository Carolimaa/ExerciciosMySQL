-- Criar o Banco de dados db_pizzaria_legal
CREATE DATABASE db_pizzaria_legal

-- Selecionar o Banco de Dados db_pizzaria_legal
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);
 
INSERT INTO tb_categorias (descricao)
VALUES ("Pizzas Doces");

INSERT INTO tb_categorias (descricao)
VALUES ("Pizzas Salgadas");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	tamanho VARCHAR(20) NOT NULL,
    datapedido DATE NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco) 
VALUES ("Calabresa", "Médio", "2023-12-05", 45.99);

INSERT INTO tb_categorias (descricao)
VALUES ("Pizza Vegetariana");

INSERT INTO tb_categorias (descricao)
VALUES ("Pizza Vegana");

INSERT INTO tb_categorias (descricao)
VALUES ("Pizzas Meio-a-Meio");

INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Nutella com Morango", "Broto", "2023-12-05", 65.99, 1);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Toscana", "Médio", "2023-12-05", 55.99, 2);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Alho e óleo", "Médio", "2023-12-05", 39.99, 4);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Margherita", "Médio", "2023-12-05", 55.99, 3);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Meia Mussarela e Meia Calabresa", "Grande", "2023-12-05", 89.99, 5);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id) 
VALUES ("Meia Chocolate Branco e Meia Paçoca", "Broto", "2023-12-05", 47.99, 5);
INSERT INTO tb_pizzas (nome, tamanho, datapedido, preco, categoria_id)  
VALUES ("Peruana", "Médio", "2023-12-05", 50.99, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT nome, datapedido, preco, tb_categorias.descricao as categoria	
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, tb_categorias.descricao as categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Pizzas Doces";

