USE bdEstoque
GO

-- Listar as descrições dos produtos ao lado do nome dos fabricantes
SELECT descricaoProduto AS 'Produto', nomeFabricante AS 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.idFabricante = tbFabricante.idFabricante

-- Listar as descrições dos produtos ao lado do nome dos fornecedores
SELECT descricaoProduto AS 'Produto', nomeFornecedor AS 'Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.idFornecedor = tbFornecedor.idFornecedor

-- Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante
SELECT nomeFabricante AS 'Fabricante', COUNT (tbProduto.idProduto) AS 'Quantidade De Produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbProduto.idFabricante = tbFabricante.idFabricante
		GROUP BY tbFabricante.nomeFabricante

-- Listar o total das vendas ao lado do nome do cliente
SELECT COUNT (tbItensVenda.idItensVenda) AS 'Compras realizadas', nomeCliente AS 'Cliente' FROM tbItensVenda
	INNER JOIN tbVenda ON tbItensVenda.idVenda = tbVenda.idVenda
		INNER JOIN tbCliente ON tbVenda.idCliente = tbCliente.idCliente
			GROUP BY tbCliente.nomeCliente

-- Listar a média dos preços dos produtos agrupados pelo nome do fornecedor
SELECT nomeFornecedor AS 'Fornecedor', FORMAT (AVG (valorProduto), 'C', 'pt-BR') AS 'Média dos valores dos produtos' FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
		GROUP BY tbFornecedor.nomeFornecedor

-- Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética
SELECT FORMAT (SUM (valorTotalVenda), 'C', 'pt-BR' ) AS 'Soma das vendas', nomeCliente AS 'Cliente' FROM tbVenda
	INNER JOIN tbCliente ON tbVenda.idCliente = tbCliente.idCliente
		GROUP BY tbCliente.nomeCliente
			ORDER BY tbCliente.nomeCliente ASC

-- Listar a soma dos preços dos produtos agrupados pelo nome do fabricante
SELECT nomeFabricante AS 'Fabricante', FORMAT (SUM (valorProduto * quantidadeProduto), 'C', 'pt-BR' ) AS 'Soma dos valores dos produtos' FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.idFabricante = tbFabricante.idFabricante
		GROUP BY tbFabricante.nomeFabricante

-- Listar a média dos preços dos produtos agrupados pelo nome do fornecedor *REPETIDO* -- 

-- Listar a soma das vendas agrupadas pelo nome do produto
SELECT SUM (quantidadeItensVenda) AS 'Total vendido', descricaoProduto AS 'Produto' FROM tbItensVenda
	INNER JOIN tbProduto ON tbItensVenda.idProduto = tbProduto.idProduto
		GROUP BY tbProduto.descricaoProduto

-- Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT COUNT (idVenda) AS 'Número de compras', nomeCliente AS 'Cliente' FROM tbVenda
	INNER JOIN tbCliente ON tbVenda.idCliente = tbCliente.idCliente
		WHERE YEAR(dataVenda) = 2014
			GROUP BY tbCliente.nomeCliente
			