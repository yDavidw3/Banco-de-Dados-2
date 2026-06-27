USE bdLivrariaBrasileira
GO

-- O total de livros que começam com a letra P
SELECT COUNT (nomeLivro) FROM tbLivro
	WHERE nomeLivro LIKE 'P%';

-- b) O maior número de páginas entre todos os livros
SELECT (nomeLivro), (numPaginas) FROM tbLivro
		ORDER BY numPaginas DESC