CREATE DATABASE dbOng
GO

USE dbOng
GO

CREATE TABLE tbSexo (
	idSexo INT PRIMARY KEY IDENTITY (1,1)
	,nomeSexo VARCHAR (10) NOT NULL
);

CREATE TABLE tbStatusCrianca (
	idStatusCrianca INT PRIMARY KEY IDENTITY (1,1)
	,descricaoStatusCrianca VARCHAR (20) NOT NULL
);

CREATE TABLE tbCrianca (
	idCrianca INT PRIMARY KEY IDENTITY (1,1)
	,nomeCrianca VARCHAR (80) NOT NULL
	,dtNascCrianca SMALLDATETIME NOT NULL
	,idSexo INT FOREIGN KEY REFERENCES tbSexo (idSexo)
	,idStatusCrianca INT FOREIGN KEY REFERENCES tbStatusCrianca (idStatusCrianca)
);

CREATE TABLE tbObservacaoCrianca (
	idObservacaoCrianca INT PRIMARY KEY IDENTITY (1,1)
	,observacaoCrianca NVARCHAR (180) NOT NULL
	,dataObservacao SMALLDATETIME
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca (idCrianca)
);

CREATE TABLE tbProntuario (
	idProntuario INT PRIMARY KEY IDENTITY (1,1)
	,obsProntuario NVARCHAR (150) NOT NULL
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca (idCrianca)
);

CREATE TABLE tbDoenca(
	idDoenca INT PRIMARY KEY IDENTITY (1,1)
	,nomeDoenca NVARCHAR (80) NOT NULL
	,cid NVARCHAR (6) NOT NULL
);

CREATE TABLE tbProntuarioDoenca (
	idProntuarioDoenca INT PRIMARY KEY IDENTITY (1,1)
	,dataAcometimento SMALLDATETIME NOT NULL
	,idProntuario INT FOREIGN KEY REFERENCES tbProntuario (idProntuario)
	,idDoenca INT FOREIGN KEY REFERENCES tbDoenca (idDoenca)
);

CREATE TABLE tbGenitor (
	idGenitor INT PRIMARY KEY IDENTITY (1,1)
	,nomeGenitor NVARCHAR (80) NOT NULL
	,cpfGenitor CHAR (11) NOT NULL
); 

CREATE TABLE tbFiliacao (
	idFiliacao INT PRIMARY KEY IDENTITY (1,1)
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca (idCrianca)
	,idGenitor INT FOREIGN KEY REFERENCES tbGenitor (idGenitor)
);

CREATE TABLE tbPadrinho (
	idPadrinho INT PRIMARY KEY IDENTITY (1,1)
	,nomePadrinho NVARCHAR (180) NOT NULL
	,cpfPadrinho CHAR (11) NOT NULL
);

CREATE TABLE tbApadrinhamento (
	idApadrinhamento INT PRIMARY KEY IDENTITY (1,1)
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca (idCrianca)
	,idPadrinho INT FOREIGN KEY REFERENCES tbPadrinho (idPadrinho)
	,dataApadrinhamento SMALLDATETIME
);
