-- CREATE DATABASE gerenciador_de_estudos;
-- acessar base de dados

CREATE TABLE Departamento (
	  cod_departamento CHAR(3) PRIMARY KEY,
	  nome VARCHAR(20)
);

CREATE TABLE Professor (
	  id_prof CHAR(8) primary key,
    nome VARCHAR(30),
    
	  email VARCHAR(30) UNIQUE,
    departamento CHAR(3),
    sala VARCHAR(10),

	  foreign key (departamento) references Departamento(cod_departamento)
);

CREATE TABLE Disciplina (
  	cod_disciplina CHAR(7) primary key, 
  	
    nome VARCHAR(30), 
  	quantidade_horas INT,
  	departamento CHAR(3),
  
  	foreign key (departamento) references Departamento(cod_departamento)
);

CREATE TABLE Turma (
	  id_turma CHAR(8) primary key,
  
  	professor CHAR(8),
  	disciplina CHAR(7),
    horario VARCHAR(10),
    sala VARCHAR(10),
    
	  foreign key (professor) references Professor(id_prof),
	  foreign key (disciplina) references Disciplina(cod_disciplina)
);

-- -- --
-- 
-- -- --

-- CREATE TABLE Aluno (id_aluno, nome, matr, senha),

CREATE TABLE Aluno 
(
  	id_aluno CHAR(9) PRIMARY KEY,
  	nome VARCHAR(32),
  	matr CHAR(9),
  	senha VARCHAR(12)
);

-- CREATE TABLE Curso (id_curso, nome, turno, departamento),
CREATE TABLE Curso 
(
  	id_curso CHAR(9) PRIMARY KEY,
  	nome VARCHAR(32),
  	turno CHAR(3),
  	departamento VARCHAR(16)
);

-- CREATE TABLE Avaliacao (id_avaliacao, data, peso, titulo, tipo),
CREATE TABLE Avaliacao (
  	id_avaliacao, 
  	data, 
  	peso, 
  	titulo,
  	tipo
);
-- CREATE TABLE Conteudo (id_conteudo, titulo, descricao),
CREATE TABLE Conteudo 
(
  id_conteudo, 
  titulo, 
  descricao
);

-- CREATE TABLE PlanoEstudos (id_plano_estudos, tempo, status, data),
CREATE TABLE PlanoEstudos 
(
  id_plano_estudos, 
  tempo, 
  status, 
  data
);
-- CREATE TABLE FeedbackDiscip (id_fb, dificuldade, comentario, nota_prof);
CREATE TABLE FeedbackDiscip 
(
  id_fb, 
  dificuldade, 
  comentario, 
  nota_prof
);
