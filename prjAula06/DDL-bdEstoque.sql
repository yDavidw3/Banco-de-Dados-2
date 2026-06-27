CREATE DATABASE bdEstoque;
GO

USE bdEstoque
GO

CREATE TABLE tbCliente (
	 idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente NVARCHAR (120) NOT NULL
	,cpfCliente CHAR (11) NOT NULL UNIQUE
	,emailCliente NVARCHAR (64) NOT NULL UNIQUE 
	,sexoCliente CHAR (9) NOT NULL
	,dataNascimentoCliente SMALLDATETIME NOT NULL
);

CREATE TABLE tbFabricante (
	 idFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante NVARCHAR (80) NOT NULL
);

CREATE TABLE tbFornecedor (
	 idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor NVARCHAR (120) NOT NULL
	,contatoFornecedor NVARCHAR (100) NOT NULL
);

CREATE TABLE tbProduto (
	 idProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto NVARCHAR (200) NOT NULL
	,valorProduto DECIMAL(10,2) NOT NULL
	,quantidadeProduto INT NOT NULL
	,idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
);

CREATE TABLE tbVenda (
	 idVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda DECIMAL(10,2) NOT NULL
	,idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
);

CREATE TABLE tbItensVenda (
	 idItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
	,quantidadeItensVenda INT NOT NULL
	,subTotalItensVenda MONEY NOT NULL,
);   