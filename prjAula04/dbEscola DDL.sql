CREATE DATABASE dbEscola
GO

USE dbEscola
GO

CREATE TABLE tbCurso (
	 idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso NVARCHAR (80)
	,cargaHorariaCurso INT
	,valorCurso DECIMAL (10,2)
);

CREATE TABLE tbTurma (
	 idTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma NVARCHAR (80)
	,horarioTurma TIME
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
);

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno NVARCHAR (180) NOT NULL
	,dataNascimentoAluno SMALLDATETIME NOT NULL
	,rgAluno CHAR (9)
	,naturalidadeAluno NVARCHAR (80)
);

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
);