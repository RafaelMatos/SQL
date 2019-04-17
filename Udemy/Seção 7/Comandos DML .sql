CREATE TABLE pessoas(
  id INTEGER NOT NULL,
  nome VARCHAR(50),
  idade INTEGER
);

INSERT INTO PESSOAS(ID,NOME,IDADE)
VALUES(1,'Juan',28);

INSERT INTO pessoas
VALUES(2,'Carlos',31);

INSERT INTO pessoas(id,nome)
VALUES(2,'Maria');

INSERT INTO pessoas
VALUES(2,'Pedro'); -- ERRO, É Necessario especificar os campos

INSERT INTO pessoas(id,nome)
VALUES(4,'Pedro');

INSERT INTO pessoas(id,idade)
VALUES (5,27);

SELECT * FROM PESSOAS;

UPDATE pessoas SET ID = 3
WHERE ID= 2 AND nome='Maria'; 

UPDATE pessoas SET idade = 38
WHERE ID = 3;

UPDATE pessoas 
SET nome ='Afonso'
WHERE ID = 5;

UPDATE pessoas
SET nome = 'Pedro IV',
    idade = 42
WHERE id = 4;

UPDATE pessoas
SET idade = null;

SELECT * FROM pessoas;

DELETE FROM pessoas
WHERE nome = 'Afonso';

DELETE FROM pessoas;
