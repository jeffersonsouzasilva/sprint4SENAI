CREATE DATABASE bd_Mamuka;

USE bd_Mamuka;

CREATE TABLE tb_tipousuario (
id_tipousuario  BINARY(16) NOT NULL,
tipo_usuario VARCHAR(255) NOT NULL,
PRIMARY KEY (id_tipousuario)
);