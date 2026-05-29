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
