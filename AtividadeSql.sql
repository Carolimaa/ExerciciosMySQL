CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);
 
SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    datavalidade DATE Not Null,
	preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Frutas", "Frutas Docinhas");

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Verduras","Verduras Fresquinhas");

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Legumes", "Legumes Fresquinhos");

INSERT INTO tb_produtos (nome, datavalidade, preco, categoria_id)  VALUES ("Morango", "2023-12-09", 15.99, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Pêra", "2022-03-07", 3.99, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Kiwi",  "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Batata", "2022-03-09", 8.00, 3);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Vagem", "2022-03-09", 5.00, 3);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Couve-Flor", "2022-03-09", 10.00, 2);

INSERT INTO tb_produtos (nome, dataValidade, preco, categoria_id) VALUES ("Coentro", "2022-03-09", 15.00, 2);


select * from tb_produtos;

select * from tb_categorias; 

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 10.00 AND 30.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

SELECT nome, dataValidade, preco, tb_categorias.tipo as categoria	
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, tb_categorias.tipo as categoria
FROM tb_produtos 
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Frutas";