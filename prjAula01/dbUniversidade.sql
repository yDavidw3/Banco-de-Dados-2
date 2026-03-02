CREATE DATABASE dbUniversidade
GO

USE  dbUniversidade
GO

CREATE TABLE tbAluno (
	 idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno NVARCHAR (80) NOT NULL
	,dataNascAluno DATE NOT NULL
	,cpfAluno CHAR (11) UNIQUE NOT NULL
	,rgAluno VARCHAR (20) UNIQUE NOT NULL
	,logradouroAluno NVARCHAR (80) NOT NULL
	,numeroCasaAluno VARCHAR (9) NOT NULL
	,complementoAluno NVARCHAR (50)
	,bairroAluno NVARCHAR (50) NOT NULL
	,cidadeAluno NVARCHAR (50) NOT NULL
	,estadoAluno NVARCHAR (50) NOT NULL
	,cepAluno CHAR (8) NOT NULL
);


CREATE TABLE tbEmailAluno (
	  idEmailAluno INT PRIMARY KEY IDENTITY (1,1)
	 ,emailEmailAluno NVARCHAR (80) NOT NULL UNIQUE
	 ,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
);

CREATE TABLE tbTelefoneLAluno (
	  idTelefoneAluno INT PRIMARY KEY IDENTITY (1,1)
	 ,numeroTelefonelAluno NVARCHAR (15) NOT NULL
	 ,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
);

CREATE TABLE tbTurma (
	 idTurma  INT PRIMARY KEY IDENTITY (1,1)
	,numeroSalaTurma VARCHAR (5) NOT NULL
	,anoFormacaoTurma DATE NOT NULL
);

CREATE TABLE tbDisciplina (
	 idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina NVARCHAR (80) NOT NULL
	,descicaoDisciplina NVARCHAR (100)
);

CREATE TABLE tbTipoCurso (
	 idTipoCurso INT PRIMARY KEY IDENTITY (1,1)
	,descTipoCurso NVARCHAR (50) NOT NULL

);

CREATE TABLE tbCurso (
	 idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso NVARCHAR (80) NOT NULL
	,idTipoCurso INT FOREIGN KEY REFERENCES tbTipoCurso (idTipoCurso)
);

CREATE TABLE tbDisciplinaCuso (
	 idDisciplinaCurso INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
);

CREATE TABLE tbMatricula (
	 idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,dataCriacaoMatricula DATETIME2 DEFAULT SYSDATETIME()
);

CREATE TABLE tbStatusProfessor (
	idStatusProfessor INT PRIMARY KEY IDENTITY (1,1)
	,statusStatusProfessor NVARCHAR (80) NOT NULL
);

CREATE TABLE tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor NVARCHAR (180) NOT NULL
	,cpfProfessor CHAR (11) UNIQUE NOT NULL
	,dataNascProfessor SMALLDATETIME NOT NULL
	,salarioProfessor MONEY NOT NULL
	,cargaHorariaProfessor INT NOT NULL
	,dataContratacaoProfessor DATE DEFAULT CAST (SYSDATETIME() AS DATE) NOT NULL
	,idStatusProfessor INT FOREIGN KEY REFERENCES tbStatusProfessor (idStatusProfessor) NOT NULL
);

CREATE TABLE tbTelefoneProfessor (
	idTelefoneProfessor INT PRIMARY KEY IDENTITY (1,1)
	,numeroTelefoneProfessor NVARCHAR (25) NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbEmailProfessor (
	idEmailProfessor INT PRIMARY KEY IDENTITY (1,1)
	,emailEmailProfessor NVARCHAR (80) UNIQUE NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbDisciplinaProfessor (
	idDisciplinaProfessor INT PRIMARY KEY IDENTITY (1,1)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbLecionacao (
	 idLecionacao INT PRIMARY KEY IDENTITY (1,1)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbFormacao (
	idFormacao INT PRIMARY KEY IDENTITY (1,1)
	,nomeFormacao NVARCHAR (100) NOT NULL
	,localFormacao NVARCHAR (200) NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbFormacaoProfessor (
	idFormacaoProfessor INT PRIMARY KEY IDENTITY (1,1)
	,idFormacao INT FOREIGN KEY REFERENCES tbFormacao (idFormacao)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);

CREATE TABLE tbEspecializacao (
	idEspecializacao INT PRIMARY KEY IDENTITY (1,1)
	,nomeEspecializacao NVARCHAR (250) NOT NULL
);

CREATE TABLE tbEspecializacaoProfessor (
	idEspecializacaoProfessor INT PRIMARY KEY IDENTITY (1,1)
	,idEspecializacao INT FOREIGN KEY REFERENCES tbEspecializacao (idEspecializacao)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
);