/* Criando uma VIEW */
CREATE VIEW
	RELATORIO
AS
SELECT
	C.NOME,
	C.SEXO,
	C.EMAIL,
	T.TIPO,
	T.NUMERO,
	E.BAIRRO,
	E.ESTADO
FROM
	CLIENTE C
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN
	ENDERECO
ON
	C.IDCLIENTE = E.ID_CLIENTE;


/* Apagando uma VIEW */
DROP VIEW
	RELATORIO;


/* Inserindo um Prefixo */
CREATE VIEW
	V_RELATORIO
AS
SELECT
	C.NOME,
	C.SEXO,
	IFNULL(EMAIL,'CLIENTE SEM EMAIL') AS 'E-MAIL',
	T.TIPO,
	T.NUMERO,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO
FROM
	CLIENTE C
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN
	ENDERECO
ON
	C.IDCLIENTE = E.ID_CLIENTE;


/* Chamando uma VIEW */
SELECT
	*
FROM
	V_RELATORIO;


SELECT
	NOME,
	NUMERO,
	ESTADO
FROM
	V_RELATORIO;


/* Update, Insert e Delete - DML */
INSERT INTO
	V_RELATORIO
VALUES(
	'ANDREIA',
	'F',
	'ANDREIA@UOL.COM.BR',
	'CEL',
	'873547864',
	'CENTRO',
	'VITORIA',
	'ES'
);


/* Criando uma Tabela */
CREATE TABLE JOGADORES(
	IDJOGADOR INT,
	NOME VARCHAR(30),
	ESTADO CHAR(2)
);


/* Inserindo Valores na Tabela */
INSERT INTO
	JOGADORES
VALUES(
	1,
	'GUERREIRO',
	'RS'
);


INSERT INTO
	JOGADORES
VALUES(
	2,
	'GABIGOL',
	'RJ'
);


INSERT INTO
	JOGADORES
VALUES(
	3,
	'GANSO',
	'RJ'
);


INSERT INTO
	JOGADORES
VALUES(
	4,
	'NENÊ',
	'RJ'
);


INSERT INTO
	JOGADORES
VALUES(
	5,
	'LOVE',
	'SP'
);


/* Criando uma VIEW */
CREATE VIEW
	V_JOGADORES
AS
SELECT
	NOME,
	ESTADO
FROM
	JOGADORES;


/* Apagando um Dado da VIEW */
DELETE FROM
	V_JOGADORES
WHERE
	NOME = 'GUERREIRO';


/* Inserindo Dados na VIEW */
INSERT INTO
	V_JOGADORES
VALUES(
	'GUERREIRO',
	'RS'
);


/* Criando uma Tabela */
CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);


/* Inserindo Valores na Tabela */
INSERT INTO
	ALUNOS
VALUES(
	1,
	'JOAO'
);


INSERT INTO
	ALUNOS
VALUES(
	1,
	'MARIA'
);


INSERT INTO
	ALUNOS
VALUES(
	2,
	'ZOE'
);


INSERT INTO
	ALUNOS
VALUES(
	2,
	'ANDRE'
);


INSERT INTO
	ALUNOS
VALUES(
	3,
	'CLARA'
);


INSERT INTO
	ALUNOS
VALUES(
	1,
	'CLARA'
);


INSERT INTO
	ALUNOS
VALUES(
	4,
	'MAFRA'
);


INSERT INTO
	ALUNOS
VALUES(
	5,
	'JANAINA'
);


INSERT INTO
	ALUNOS
VALUES(
	1,
	'JANAINA'
);


INSERT INTO
	ALUNOS
VALUES(
	3,
	'MARCELO'
);


INSERT INTO
	ALUNOS
VALUES(
	4,
	'GIOVANI'
);


INSERT INTO
	ALUNOS
VALUES(
	5,
	'ANTONIO'
);


INSERT INTO
	ALUNOS
VALUES(
	6,
	'ANA'
);


INSERT INTO
	ALUNOS
VALUES(
	6,
	'VIVIANE'
);


/* Usando Order By */
SELECT
	*
FROM
	ALUNOS
ORDER BY
	NUMERO;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	1;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	2;


/* Ordenando por mais de uma Coluna */
SELECT
	*
FROM
	ALUNOS
ORDER BY
	NUMERO,
	NOME;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	1,
	2;


/* Mesclando Order By com Projeção */
SELECT
	NOME
FROM
	ALUNOS
ORDER BY
	1,
	2;


SELECT
	NOME
FROM
	ALUNOS
ORDER BY
	NUMERO,
	NOME;


/* Order By Desc / Asc */
SELECT
	*
FROM
	ALUNOS
ORDER BY
	1 ASC;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	1 DESC;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	1,
	2 DESC;


SELECT
	*
FROM
	ALUNOS
ORDER BY
	1 DESC,
	2 DESC;


/* Ordenando com Joins */
SELECT
	C.NOME,
	C.SEXO,
	IFNULL(EMAIL, 'CLIENTE SEM EMAIL') AS 'E-MAIL',
	T.TIPO,
	T.NUMERO,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO
FROM
	CLIENTE C
INNER JOIN
	TELEFONE T
ON
	C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
ORDER BY
	1;


/* Ordenando em uma View */
SELECT
	*
FROM
	V_RELATORIO
ORDER BY
	1;