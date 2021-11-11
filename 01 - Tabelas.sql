*CRIAÇÃO DAS TABELAS DO BANCO DE DADOS RELACIONAL*


CREATE TABLE Instituto 
(Cod_Instituto INTEGER CHECK (Cod_Instituto > 0),
Nome_Instituto VARCHAR(50) NOT NULL UNIQUE,
PRIMARY KEY (Cod_Instituto));

CREATE TABLE Curso
(Cod_Curso INTEGER CHECK(Cod_Curso BETWEEN 1001 AND 1999),
Nome_curso VARCHAR(50) NOT NULL UNIQUE,
Cod_Instituto INTEGER,
PRIMARY KEY (Cod_Curso),
FOREIGN KEY (Cod_Instituto) REFERENCES Instituto(Cod_Instituto));

CREATE TABLE Disciplina 
(Cod_Disciplina INTEGER CHECK(Cod_Disciplina BETWEEN 2001 AND 2999),
Nome_Disciplina VARCHAR(50) NOT NULL UNIQUE,
Cod_Curso INTEGER,
PRIMARY KEY (Cod_Disciplina),
FOREIGN KEY (Cod_Curso) REFERENCES Curso(Cod_Curso));

CREATE TABLE Professor
(Cod_Professor INTEGER CHECK(Cod_Professor BETWEEN 3001 AND 3999),
Nome_Professor VARCHAR(50) NOT NULL,
Salario NUMERIC NOT NULL,
PRIMARY KEY(Cod_professor));

CREATE TABLE Professor
(Cod_Professor INTEGER CHECK(Cod_Professor BETWEEN 3001 AND 3999),
Nome_Professor VARCHAR(50) NOT NULL,
Salario NUMERIC NOT NULL,
PRIMARY KEY(Cod_professor));

CREATE TABLE Aluno_Disc
(Matricula INTEGER, 
Cod_Disciplina INTEGER,
Nota INTEGER CHECK(Nota BETWEEN 0 AND 10),
PRIMARY KEY (Matricula, Cod_Disciplina),
FOREIGN KEY (Matricula) REFERENCES Aluno(Matricula),
FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina(Cod_Disciplina));

CREATE TABLE Prof_Disc
(Cod_Professor INTEGER,
Cod_Disciplina INTEGER,
Dia_Semana VARCHAR(13),
Sala INTEGER CHECK(Sala BETWEEN 101 AND 999),
PRIMARY KEY (Cod_Professor, Cod_Disciplina),
FOREIGN KEY (Cod_Professor) REFERENCES Professor(Cod_Professor),
FOREIGN KEY (Cod_Disciplina) REFERENCES Disciplina(Cod_Disciplina));

