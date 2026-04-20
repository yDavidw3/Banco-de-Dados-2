CREATE DATABASE bdLojaRoupas
GO

USE bdLojaRoupas
GO

CREATE TABLE tbCliente (
	 idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente NVARCHAR (120) NOT NULL
	,idadeCliente INT
);	

CREATE TABLE tbFabricante (
	 idFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante NVARCHAR (120) NOT NULL
);
	
CREATE TABLE tbFuncionario (
	 idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomeFuncionario NVARCHAR (120) NOT NULL
	,idadeFuncionario INT
	,dataAdmissao DATETIME2 DEFAULT SYSDATETIME()
	,salarioFuncionario MONEY
);

CREATE TABLE tbProduto (
	 idProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto NVARCHAR (120) NOT NULL
	,precoProduto DECIMAL(10,2) NOT NULL
	,dataEntradaProduto SMALLDATETIME NOT NULL
	,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
);

CREATE TABLE tbVendedor (
	 idVendedor INT PRIMARY KEY IDENTITY (1,1)
	 ,nomeVendedor NVARCHAR (120) NOT NULL
);

CREATE TABLE tbVendas (
	 idVendas INT PRIMARY KEY IDENTITY (1,1)
	,dataVendas SMALLDATETIME NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
	,idVendedor INT FOREIGN KEY REFERENCES tbVendedor (idVendedor)	
	,valorVendas DECIMAL(10,2) NOT NULL
);

CREATE TABLE tbItensVenda (
	 idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,idVendas INT FOREIGN KEY REFERENCES tbVendas (idVendas)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	,quantidadeItensVenda INT NOT NULL
	,subTotalItensVenda MONEY NOT NULL,
);

