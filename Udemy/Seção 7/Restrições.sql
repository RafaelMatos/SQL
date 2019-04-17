/*
CREATE TABLE table_name
  (
    column_name1 data_type(size);
    column_name2 data_type(size);
    column_name3 data_type(size);
  )
*/

CREATE TABLE personas
(
  person_id INT,
  first_name VARCHAR2(255),
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500)
);

-- NOT NULL
-- UNIQUE (CADA FILA PARA UMA COLUNA TEM VALOR UNICO)
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK (VALOR EM UMA COLUNA CUMPRE UMA CONDI��O ESPECIFICA)
-- DEFAULT (ESPECIFICA UM VALOR POR DEFAULT DE UMA COLUNA)

CREATE TABLE personas
(
  person_id INT NOT NULL,
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500)
);
SELECT * FROM PERSONAS;
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,NULL); --ERRO
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,'RAFAEL');
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,'CAROL');

DROP TABLE PERSONAS;
CREATE TABLE personas
(
  person_id INT NOT NULL UNIQUE,
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500)
);
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,'CAROL');
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,'CAROL'); --ERRO "unique constraint (%s.%s) violated" 
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (1,'CAROLINA'); --ERRO "unique constraint (%s.%s) violated" 
INSERT INTO PERSONAS (PERSON_ID,FIRST_NAME) VALUES (2,'CAROL'); --OK

--USAR CASO A TABELA TENHA SIDO CRIADA SEM A CONSTRAINT UNIQUE
ALTER TABLE PERSONAS ADD UNIQUE(PERSON_ID);
ALTER TABLE PERSONAS ADD CONSTRAINT UNIQUE_PERSON_ID UNIQUE(PERSON_ID);

DROP TABLE PERSONAS;
-- PRIMARY KEY
CREATE TABLE personas
(
  person_id INT PRIMARY KEY,
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500)
);

CREATE TABLE personas
(
  person_id INT,
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500),
  CONSTRAINT PERSONAS_PK PRIMARY KEY(PERSON_ID)
);
--USAR CASO A TABELA TENHA SIDO CRIADA SEM A CONSTRAINT PRIMARY KEY
ALTER TABLE PERSONAS ADD PRIMARY KEY(PERSON_ID);
ALTER TABLE PERSONAS ADD CONSTRAINT PERSONAS_PK PRIMARY KEY(PERSON_ID);

--APAGAR AS RESTRI��ES
ALTER TABLE PERSONAS DROP PRIMARY KEY;
--APAGAR A PRIMARY KEY
ALTER TABLE PERSONAS DROP CONSTRAINT PERSONAS_PK;

DROP TABLE PERSONAS;

CREATE TABLE personas
(
  person_id INT CHECK(PERSON_ID>0),
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500),
  CONSTRAINT PERSONAS_PK PRIMARY KEY(PERSON_ID)
);

CREATE TABLE personas
(
  person_id INT CHECK(PERSON_ID>0),
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255),
  address VARCHAR2(500),
  CONSTRAINT PERSONAS_PK PRIMARY KEY(PERSON_ID),
  CONSTRAINT PERSONAS_CHK CHECK (PERSON_ID>0)
 );
 
ALTER TABLE PERSONAS ADD CHECK(PERSON_ID>0);
ALTER TABLE PERSONAS ADD CONSTRAINT PERSONAS_CHK CHECK (PERSON_ID>0);
ALTER TABLE PERSONAS DROP CONSTRAINT PERSONAS_CHK;


--DEFAULT
CREATE TABLE personas
(
  person_id INT CHECK(PERSON_ID>0),
  first_name VARCHAR2(255) NOT NULL,
  last_name VARCHAR2(255),
  city VARCHAR2(255) DEFAULT 'Seattle',
  address VARCHAR2(500),
  CONSTRAINT PERSONAS_PK PRIMARY KEY(PERSON_ID),
  CONSTRAINT PERSONAS_CHK CHECK (PERSON_ID>0)
 );
 
ALTER TABLE PERSONAS MODIFY CITY DEFAULT 'Seattle';
ALTER TABLE PERSONAS ALTER COLUMN CITY DROP DEFAULT;