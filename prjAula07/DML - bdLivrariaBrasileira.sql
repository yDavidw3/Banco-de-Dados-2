USE bdLivrariaBrasileira;
GO

INSERT INTO tbAutor (
    codAutor,
    nomeAutor
)
VALUES
    (1, 'Machado de Assis'),
    (2, 'Cora Coralina'),
    (3, 'Graciliano Ramos'),
    (4, 'Clarice Lispector'),
    (5, 'Erico Verissimo'),
    (6, 'Carlos Drummond de Andrade'),
    (7, 'Paulo Coelho');

INSERT INTO tbGenero (
    codGenero,
    nomeGenero
)
VALUES
    (1, 'Romance'),
    (2, 'Poesia'),
    (3, 'Drama'),
    (4, 'Cronica'),
    (5, 'Fantasia');

INSERT INTO tbEditora (
    codEditora,
    nomeEditora
)
VALUES
    (1, 'Companhia das Letras'),
    (2, 'Record'),
    (3, 'Saraiva'),
    (4, 'Cia das Letras');

INSERT INTO tbLivro (
    codLivro,
    nomeLivro,
    numPaginas,
    codGenero,
    codAutor,
    codEditora
)
VALUES
    (1, 'Poemas da Infancia', 180, 2, 6, 1),
    (2, 'Poesia Completa', 350, 2, 6, 2),
    (3, 'A Hora da Estrela', 120, 1, 4, 1),
    (4, 'Memorias Postumas', 220, 1, 1, 3),
    (5, 'Vidas Secas', 200, 3, 3, 2),
    (6, 'O Alquimista', 250, 5, 7, 4),
    (7, 'Poema das Sete Faces', 90, 2, 6, 1),
    (8, 'Grande Sertao', 500, 1, 5, 3),
    (9, 'Estrela da Vida Inteira', 300, 2, 2, 2),
    (10, 'Paisagem Brasileira', 275, 4, 5, 4),
    (11, 'Pedra no Caminho', 210, 2, 2, 1),
    (12, 'Perto do Coracao Selvagem', 320, 1, 4, 2);