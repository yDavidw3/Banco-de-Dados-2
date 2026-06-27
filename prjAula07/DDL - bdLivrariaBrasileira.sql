CREATE DATABASE bdLivrariaBrasileira;
GO

USE bdLivrariaBrasileira;
GO

CREATE TABLE tbAutor (
    codAutor INT PRIMARY KEY,
    nomeAutor VARCHAR(100) NOT NULL
);

CREATE TABLE tbGenero (
    codGenero INT PRIMARY KEY,
    nomeGenero VARCHAR(50) NOT NULL
);

CREATE TABLE tbEditora (
    codEditora INT PRIMARY KEY,
    nomeEditora VARCHAR(100) NOT NULL
);

CREATE TABLE tbLivro (
		codLivro INT PRIMARY KEY,
    nomeLivro VARCHAR(150) NOT NULL,
    numPaginas INT NOT NULL,
    codGenero INT NOT NULL,
    codAutor INT NOT NULL,
    codEditora INT NOT NULL,

    FOREIGN KEY (codGenero)
        REFERENCES tbGenero(codGenero),

    FOREIGN KEY (codAutor)
        REFERENCES tbAutor(codAutor),

    FOREIGN KEY (codEditora)
        REFERENCES tbEditora(codEditora)
);