CREATE DATABASE Gerenciamento_Escolar
USE Gerenciamento_Escolar

CREATE TABLE Alunos(
	AlunoID		INT PRIMARY KEY	NOT NULL,
	NomeAluno	VARCHAR(100),
	TurmaID		INT NOT NULL
)

CREATE TABLE Turma(
	TurmaID		INT PRIMARY KEY NOT NULL
)

CREATE TABLE Professor(
	ProfessorID		INT PRIMARY KEY NOT NULL,
	NomeProfessor	VARCHAR(100),
	MateriaID		INT NOT NULL
)

CREATE TABLE Materia(
	MateriaID		INT PRIMARY KEY NOT NULL,
	NomeMateria		VARCHAR(100),
)

CREATE TABLE Sala(
	SalaID		INT PRIMARY KEY NOT NULL
)

CREATE TABLE DiasDaSemana(
	DiaID	INT PRIMARY KEY NOT NULL,
	Dia		VARCHAR(20)
)

CREATE TABLE Horario(
	HorarioID		INT PRIMARY KEY NOT NULL,
	Horario			VARCHAR(5)
)

CREATE TABLE Aulas(
	AulaID			INT PRIMARY KEY NOT NULL,
	DiaID			INT NOT NULL,
	HorarioID		INT NOT NULL,
	TurmaID			INT NOT NULL,
	ProfessorID		INT NOT NULL,
	SalaID			INT NOT NULL
)

INSERT INTO Horario(HorarioID, Horario)
VALUES
(1, '13:45'),
(2, '14:30'),
(3, '15:30'),
(4, '16:15')
SELECT * FROM Horario

INSERT INTO DiasDaSemana(DiaID, Dia)
VALUES
(1, 'Segunda'),
(2, 'Terça'),
(3, 'Quarta'),
(4, 'Quinta'),
(5, 'Sexta')
SELECT * FROM DiasDaSemana

INSERT INTO Turma(TurmaID)
VALUES
(1),
(2),
(3),
(4)
SELECT * FROM Turma

INSERT INTO Sala(SalaID)
VALUES
(1),
(2),
(3),
(4)
SELECT * FROM Sala

INSERT INTO Materia(MateriaID, NomeMateria)
VALUES
(1, 'Portugues'),
(2, 'Matematica'),
(3, 'Historia'),
(4, 'Geografia'),
(5, 'Biologia'),
(6, 'Quimica'),
(7, 'Fisica'),
(8, 'Ingles'),
(9, 'Espanhol'),
(10, 'Educacao Fisica')
SELECT * FROM Materia

INSERT INTO Professor(ProfessorID, NomeProfessor, MateriaID)
VALUES
(1, 'Jorge Batista', 1),
(2, 'Amanda Regina', 2),
(3, 'Pedro Souza',3),
(4, 'Nicole Correa', 4),
(5, 'Ana Maria', 5),
(6, 'Antonio Correia', 6),
(7, 'Eduardo Nunes', 7),
(8, 'Bianca Souza', 8),
(9, 'Joao Pedro', 9),
(10, 'Pedro Ferreira', 10),
(11, 'Maria Antonieta', 1),
(12, 'Mateus Nascimento', 1),
(13, 'Heitor Souza', 2),
(14, 'Ana Fonseca', 2)
SELECT * FROM Professor

INSERT INTO Alunos(AlunoID, NomeAluno, TurmaID)
VALUES
(1, 'Jorge Souza', 1),
(2, 'Pedro Nunes', 1),
(3, 'Pedro Correa',1),
(4, 'Maria Fernanda', 1),
(5, 'Bianca Souza', 1),
(6, 'Elis Fonseca', 1),
(7, 'Antonio Nunes', 1),
(8, 'Maria Souza', 1),
(9, 'Joao Pedro', 1),
(10, 'Gabriel Ferreira', 1),
(11, 'Rafael Batista', 2),
(12, 'Maria Regina', 2),
(13, 'Artur Souza',2),
(14, 'Bernardo Correa', 2),
(15, 'Heitor Maria', 2),
(16, 'Laura Correia', 2),
(17, 'Gabriel Nunes', 2),
(18, 'Pedro Souza', 2),
(19, 'Amilton Pedro', 2),
(20, 'Renato Ferreira', 2),
(21, 'Gabriel Batista', 3),
(22, 'Aidil Regina', 3),
(23, 'Lucas Souza',3),
(24, 'Rafaela Correa', 3),
(25, 'Ana Maria', 3),
(26, 'Heitor Correia', 3),
(27, 'Eduardo Nunes', 3),
(28, 'Andersor Souza', 3),
(29, 'Joao Pedro', 3),
(30, 'Mateus Ferreira', 3),
(31, 'Renato Batista', 4),
(32, 'Matheus Regina', 4),
(33, 'Bianca Souza', 4),
(34, 'Edinalva Correa', 4),
(35, 'Anderson Silva', 4),
(36, 'Jorge Correia', 4),
(37, 'Amilton Nunes', 4),
(38, 'Lucas Souza', 4),
(39, 'Lucas Fonseca', 4),
(40, 'Antonio Ferreira', 4)
SELECT * FROM Alunos

CREATE TRIGGER Del_Horario
ON Horario
INSTEAD OF DELETE
AS
BEGIN
	PRINT 'Esses dados não podem ser deletados'
END
GO

CREATE TRIGGER Del_Turma
ON Turma
INSTEAD OF DELETE
AS
BEGIN
	PRINT 'Esses dados não podem ser deletados'
END
GO

SELECT
	