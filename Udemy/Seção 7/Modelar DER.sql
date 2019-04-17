CREATE TABLE autores(
  id number(4) PRIMARY KEY,
  nome VARCHAR2(50) NOT NULL,
  sobrenome_paterno VARCHAR2(50) NOT NULL,
  sobrenome_materno VARCHAR2(50) NOT NULL
);

CREATE TABLE livros(
  isbn VARCHAR2(13) PRIMARY KEY,
  titulo VARCHAR2(255) NOT NULL,
  sinopse VARCHAR2(1000),
  num_paginas NUMBER(4),
  editorial_id NUMBER(4));
  
  CREATE TABLE autores_livros(
    autor_id NUMBER(4),
    livro_id VARCHAR2(13)  
  );
  
  CREATE TABLE editoriais(
    id NUMBER(4) PRiMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    sede VARCHAR2(255)
  );
  
  ALTER TABLE autores_livros
  ADD CONSTRAINT autores_fk FOREIGN KEY (autor_id)
  REFERENCES autores(id);
  
  ALTER TABLE autores_livros
  ADD CONSTRAINT livros_fk FOREIGN KEY(livro_id)
  REFERENCES livros(isbn);
  
  ALTER TABLE livros 
  ADD CONSTRAINT livro_editorial_fk FOREIGN KEY(editorial_id)
  REFERENCES editoriais(id);
   