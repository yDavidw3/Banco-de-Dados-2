USE bdLojaRoupas;
GO

SELECT * FROM tbCliente;

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES 
	 ('Wesley Safadão', 85)
	,('Deyde Costa', 67)
	,('Pedrinho Matador', 68)
	,('Alan Turing', 20)
	,('Elma Maria', 150)

SELECT* FROM tbFabricante;

INSERT INTO tbFabricante (nomeFabricante)
VALUES 
	 ('Malwee')
	,('Marisol')
	,('Cia da Malha')

SELECT *FROM tbFuncionario;

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES
	('Giuseppe Camole', 19, '29/02/2000', 90000 )


SELECT *FROM tbVendedor;

INSERT INTO tbVendedor (nomeVendedor)
VALUES
	('João Santana')
	,('Raquel Torres')


SELECT *FROM tbProduto;

INSERT INTO tbProduto(nomeProduto, precoProduto, dataEntradaProduto, idFabricante, idFuncionario)
VALUES
	('Depilador', 20, '05/02/2026', 1, 1)
	,('Carrinho de controle remoto', 120, '20/03/2026', 3, 1)
	,('Notebook Positivo', 3000, '31/01/2026', 2, 1)
	,('Parafusadeira Bosh', 1200, '27/02/2026', 3, 1)



INSERT INTO tbVendas(dataVendas, idCliente, idVendedor, valorVendas)
VALUES
	('10/02/2026', 2, 1, 1320)
	,('02/03/2026', 5, 2, 140)
	,('20/03/2026', 3, 2, 3020)
	,('14/01/2001', 1, 1, 4340)

SELECT * FROM tbItensVenda

INSERT INTO tbItensVenda (idVendas, idProduto, quantidadeItensVenda, subTotalItensVenda)
VALUES 
	(1, 2, 1, 120)
	,(1, 4, 1, 1200)
	,(2, 1, 2, 40)
	,(2, 2, 1, 120)
	,(3, 3, 1, 3000)
	,(3, 1, 1, 20)
	,(4, 3, 1, 3000)
	,(4, 4, 1, 1200)

--atualização
UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE idFabricante = 3;

--10% de desconto nas vendas do cliente 1
UPDATE tbVendas
SET valorVendas = valorVendas * 0.9
WHERE idCliente = 1;

-- 20% a mais no preço dos produtos do fabricante 2
UPDATE tbProduto
SET precoProduto = precoProduto * 1.2
WHERE idFabricante = 2;

-- 10 unidades a menos do produto 3
UPDATE tbItensVenda
SET quantidadeItensVenda = quantidadeItensVenda - 10
WHERE idProduto = 3;

-- tirar segundo item da venda 2
DELETE tbItensVenda
WHERE idItensVenda = 4;

-- tirar todos os itens da venda 3
DELETE FROM tbItensVenda
WHERE idVendas = 3;

-- tentar remover fabricante 1
DELETE FROM tbFabricante
WHERE idFabricante = 1;

-- Comentário:
-- Não foi possível remover o fabricante de código 1, tem produtos vinculados a ele.