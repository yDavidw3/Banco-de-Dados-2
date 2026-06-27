USE dbEstoque;
GO

SELECT * FROM tbCliente;

SELECT * FROM tbFornecedor;

SELECT * FROM tbFabricante;

SELECT * FROM tbItensVenda;

SELECT * FROM tbProduto;

SELECT * FROM tbVenda;

-- =============== EXERCÍCIOS ============================

-- 1) Criar uma consulta que retorne o código do produto, o nome do produto e o nome do fabricante somente daqueles produtos que custam igual ao valor mais alto;
SELECT codProduto id, descricaoProduto Produto, nomeFabricante Fabricante FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.codFabricante = tbFabricante.codFabricante
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)
	
-- 2) Criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos que custem acima do valor médio dos produtos em estoque
SELECT descricaoProduto Produto, nomeFabricante Fabricante, valorProduto FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.codFabricante = tbFabricante.codFabricante
	WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto)


-- 3) Criar uma consulta que retorne o nome dos clientes quetiveram vendas com valor acima do valor médio das vendas
SELECT DISTINCT nomeCliente Cliente FROM tbCliente
	INNER JOIN tbVenda
		ON tbCliente.codCliente = tbVenda.codCliente
	WHERE valorTotalVenda >   (SELECT AVG(valorTotalVenda) FROM tbVenda)
	 

-- 4) Criar uma consulta que retorno o nome e o preço dos produtos mais caros
SELECT descricaoProduto Produto, valorProduto Preço FROM tbProduto
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)

-- 5) Criar uma consulta que retorne o nome e o preço do produto mais barato
SELECT descricaoProduto Produto, valorProduto Preço FROM tbProduto
	WHERE valorProduto  = (SELECT MIN(valorProduto) FROM tbProduto)

