USE bd_vsconnect;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Jessica Silva",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50 - Diadema/SP",
    "04221000",
	0
);


INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Thiago Nascimento",
    "thiago@email.com",
    "senai@134",
    "Rua Carol, 50 - Diadema/SP",
    "04331000",
    0

);


INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Amanda Souza",
    "amanda@email.com",
    "senai@134",
    "Rua Carol, 50 - Diadema/SP",
    "04245000",
	0
);

INSERT INTO tb_tech VALUES ( UUID_TO_BIN(UUID()), "html" );
INSERT INTO tb_tech VALUES ( UUID_TO_BIN(UUID()), "css" );

/*SELECT * FROM tb_usuario*/



SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("dd9ea694-6ed3-11ee-8ca0-601895503df2");

DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("dd9ea694-6ed3-11ee-8ca0-601895503df2");

UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN("d52f6fde-6ed3-11ee-8ca0-601895503df2");



SELECT * FROM tb_usuario;

select BIN_TO_UUID(id), nome, tipo_usuario from tb_usuario;

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("b857017f-6ed6-11ee-8ca0-601895503df2"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("b857017f-6ed6-11ee-8ca0-601895503df2"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("b857017f-6ed6-11ee-8ca0-601895503df2"), NULL);




SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_tech_servico;


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("e51e60a0-6ed3-11ee-8ca0-601895503df2"), UUID_TO_BIN("ce7dcd5a-6ede-11ee-8ca0-601895503df2")
);


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("e51e60a0-6ed3-11ee-8ca0-601895503df2"), UUID_TO_BIN("ce7dd82b-6ede-11ee-8ca0-601895503df2")
);


INSERT INTO tb_tech_servico VALUES(
	UUID_TO_BIN("7488a142-6ed3-11ee-8ca0-601895503df2"), UUID_TO_BIN("ce7dd9cd-6ede-11ee-8ca0-601895503df2")
);



SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES(
	UUID_TO_BIN("d52f6fde-6ed3-11ee-8ca0-601895503df2"), UUID_TO_BIN("7488a142-6ed3-11ee-8ca0-601895503df2")
);


SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;
SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES(
UUID_TO_BIN(UUID()), 
UUID_TO_BIN("d52f6fde-6ed3-11ee-8ca0-601895503df2"),
UUID_TO_BIN("ce7dd82b-6ede-11ee-8ca0-601895503df2"),
5000.00
);