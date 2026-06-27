CREATE DATABASE bdEscolaIdioma
GO

USE bdEscolaIdioma
GO

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno NVARCHAR (180)
	,rgAluno VARCHAR (11)
	,cpfAluno CHAR (11)
	,logradouroAluno NVARCHAR (180)
	,numLograAluno VARCHAR (10)
	,complementoLograAluno VARCHAR (30)
	,cepAluno CHAR (8)
	,bairroAluno VARCHAR (100)
	,cidadeAluno NVARCHAR (120)
	,dataNascAluno DATE
);

CREATE TABLE tbTelefoneAluno (
	idTelefoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,numFoneAluno VARCHAR (20)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
);

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (100)
	,valorCurso MONEY
);

CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descricaoNivel VARCHAR (100)
);

CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descricaoPeriodo VARCHAR (50)
);

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,descricaoTurma VARCHAR (100)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idNivel  INT FOREIGN KEY REFERENCES tbNivel(idNivel)
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
	,horarioTurma TIME
	,diaDaSemana VARCHAR (20)
);

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATETIME2
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
);