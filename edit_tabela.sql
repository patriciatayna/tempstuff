CREATE TABLE Departamento (
  cod_departamento CHAR(3) PRIMARY KEY,
  nome VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE Professor (
  id_prof CHAR(8) primary key,
  nome VARCHAR(30) NOT NULL,
    
  email VARCHAR(30) UNIQUE,
  departamento CHAR(3) NOT NULL,
  sala VARCHAR(10),

  foreign key (departamento) 
  	references Departamento(cod_departamento)
);

CREATE TABLE Disciplina (
  cod_disciplina CHAR(7) primary key, 
 
  nome VARCHAR(30) NOT NULL, 
  quantidade_horas INTEGER,
  departamento CHAR(3),
  
  foreign key (departamento) references Departamento(cod_departamento)
);

CREATE TABLE Turma (
  id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
  
  professor CHAR(8) NOT NULL,
  disciplina CHAR(7) NOT NULL,
    horario VARCHAR(10),
    sala VARCHAR(10),
    
  foreign key (professor) references Professor(id_prof),
  foreign key (disciplina) references Disciplina(cod_disciplina)
);

CREATE TABLE Aluno 
(
  id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,

  nome VARCHAR(32) NOT NULL,
  matr CHAR(9) UNIQUE NOT NULL,

  senha VARCHAR(12)
);

CREATE TABLE Curso 
(
  id_curso INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(32) NOT NULL,
  turno CHAR(3),
  departamento CHAR(3)

     FOREIGN KEY (departamento)
REFERENCES (Departamento.cod_departamento)

     
);

CREATE TABLE Avaliacao (
  id_avaliacao INTEGER PRIMARY KEY AUTOINCREMENT,
  
  data DATE NOT NULL, 
  titulo VARCHAR(64) NOT NULL,
  
  tipo VARCHAR(24),
  peso INTEGER
);

CREATE TABLE Conteudo 
(
  id_conteudo INTEGER PRIMARY KEY AUTOINCREMENT, 
  titulo VARCHAR(64) NOT NULL, 
  descricao VARCHAR(204)
);

CREATE TABLE PlanoEstudos 
(
  id_plano_estudos INTEGER PRIMARY KEY AUTOINCREMENT, 
  tempo INTEGER, 
  status VARCHAR(12), 
  data DATE
);

CREATE TABLE FeedbackDiscip 
(
  id_fb INTEGER PRIMARY KEY AUTOINCREMENT,
  dificuldade VARCHAR(12), 
  comentario VARCHAR(204), 
  nota_prof INTEGER
  
  -- 1 a 10 ou 1 a 5? (restrição)
);
