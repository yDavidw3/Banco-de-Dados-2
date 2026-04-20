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

-- insert tbCliente:
SELECT * FROM tbCliente;

INSERT INTO tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascimentoCliente)
VALUES('Armando José Santana', '12345678900', 'armandojsantana@outlook.com', 'm', '19610221'),
	  ('Sheila Carvalho Leal', '45678909823', 'scarvalho@@ig.com.br', 'f', ' 19780919'),
	  ('Carlos Henrique Souza', '76598278299', 'chenrique@ig.com.br', 'm', '19810908'),
	  ('Maria Aparecida Souza', '87365309899', 'mapdasouza@outlook.com', 'f', '19870202'),
	  ('Adriana Nogueira Silva', '76354309388', 'drica1977@ig.com.br', 'f', '19770904'),
	  ('Paulo Henrique Silva', '87390123111', 'phsilva80@hotmail.com', 'm', '19870202')


--insert tbFabricante:
SELECT * FROM tbFabricante;

INSERT INTO tbFabricante (nomeFabricante)
VALUES ('Unilever')
	   ('P&G'),
	   ('Bunge')  Do

--insert tbFornecedor:
SELECT * FROM tbFornecedor;

INSERT INTO tbFornecedor (nomeFornecedor, contatoFornecedor)
VALUES ('Atacadão', 'Carlos Santos'),
	   ('Assaí', 'Maria Stella'),
	   ('Roldão', 'Paulo César')

--insert tbProduto:
SELECT * FROM tbProduto; 

INSERT INTO tbProduto (descricaoProduto, valorProduto, quantidadeProduto, idFabricante, idFornecedor )
VALUES ('Amaciante Downy', 5.76, 1500, 2, 1),
	   ('Amaciante Comfort', 5.45, 2300, 1, 1),
	   ('Sabão em pó OMO', 5.99, 1280, 1, 2),
	   ('Margarina Qually', 4.76, 2500, 3, 1),
	   ('Salsicha Hot Dog Sadia', 6.78, 2900, 3, 2),
	   ('Mortadela Perdigão', 2.50, 1200, 3, 3),
	   ('Hamburguer Sadia', 9.89, 1600, 3, 1),
	   ('Fralda Pampers', 36.00, 340, 2, 3),
	   ('Xampu Seda', 5.89, 800, 1, 2),
	   ('Condicionador Seda', 6.50, 700, 1, 3)

--insert tbVenda:
SELECT * FROM tbVenda;

INSERT INTO tbVenda (dataVenda, valorTotalVenda, idCliente)
VALUES ('20140201', 4500, 1),
	   ('20140203', 3400, 1),
	   ('20140210', 2100, 2),
	   ('20140215', 2700, 3),
	   ('20140317', 560, 3),
	   ('20140409', 1200, 4),
	   ('20140507', 3500, 5),
	   ('20140507', 3400, 1),
	   ('20140505', 4000, 2)

--insert tbitensVenda:
SELECT * FROM tbItensVenda;

INSERT INTO tbItensVenda (idVenda, idProduto, quantidadeitensVenda, subTotalItensVenda )
VALUES (1, 1, '200', 1500),
	   (1, 2, '300', 3000),
	   (2, 4, '120', 1400),
	   (2, 2, '200', 1000),
	   (2, 3, '130', 1000),
	   (3, 5, '200', 2100),
	   (4, 4, '120', 1000),
	   (4, 5, '450', 700),
	   (5, 5, '200', 560),
	   (6, 7, '200', 600),	
	   (6, 6, '300', 600)

	

	   