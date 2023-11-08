/*Inicio dia 18/10 - Introdução ao MySQL */

CREATE DATABASE bd_vsconnect;

USE bd_vsconnect;

CREATE TABLE tb_usuario (
id  BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
endereco VARCHAR(255),
cep VARCHAR(10),
tipo_usuario TINYINT NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE tb_servico (
id  BINARY(16) NOT NULL,
titulo VARCHAR(255) NOT NULL,
descricao TEXT NOT NULL,
proposta DECIMAL(10,2) NOT NULL,
status_servico VARCHAR(255) NOT NULL,
id_cliente BINARY(16) NOT NULL,
id_dev BINARY(16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(id_cliente) REFERENCES tb_usuario(id),
FOREIGN KEY(id_dev) REFERENCES tb_usuario(id)
);

CREATE TABLE tb_cotacao (
id BINARY(16) NOT NULL,
id_dev BINARY(16) NOT NULL,
id_servico BINARY(16) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(id_dev) REFERENCES tb_usuario(id),
FOREIGN KEY(id_servico) REFERENCES tb_servico(id)
);

CREATE TABLE tb_tech (
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL UNIQUE,
PRIMARY KEY (id)
);

CREATE TABLE tb_dev_tech (
id_dev BINARY(16) NOT NULL,
id_tech BINARY(16) NOT NULL,
FOREIGN KEY(id_dev) REFERENCES tb_usuario(id),
FOREIGN KEY(id_tech) REFERENCES tb_tech(id)
);

CREATE TABLE tb_tech_servico (
id_tech BINARY(16) NOT NULL,
id_servico BINARY(16) NOT NULL,
FOREIGN KEY(id_tech) REFERENCES tb_tech(id),
FOREIGN KEY(id_servico) REFERENCES tb_servico(id)
);


ALTER TABLE tb_servico MODIFY COLUMN id_dev BINARY(16);
DROP TABLE tb_techservico;
DROP TABLE tb_devtech;


/* Os proximos itens sao altenacoes feitas para altorizacao da criptografia dia 07 do 11*/ 

SELECT * FROM  tb_usuario;

UPDATE tb_usuario
SET tipo_usuario = null
WHERE  1=1;

ALTER TABLE tb_usuario
MODIFY tipo_usuario tinyint;